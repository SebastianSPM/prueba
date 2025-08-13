import mysql from 'mysql2/promise';
import * as fs from 'fs';
import csv from 'csv-parser';

// Conexión a la base de datos
const connection = await mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '12345',
  database: 'pd_sebastian_pereira_manglar'
});

// Función para leer CSV con manejo de errores
function readCSV(filePath) {
  return new Promise((resolve, reject) => {
    const results = [];
    const stream = fs.createReadStream(filePath, 'utf8');

    stream
      .pipe(
        csv({
          separator: ',',
          strict: false,
          skipEmptyLines: true,
          mapHeaders: ({ header }) => header.trim().replace(/^"|"$/g, ''),
          mapValues: ({ value }) => {
            const cleaned = value.trim().replace(/^"|"$/g, '');
            return cleaned === '' ? null : cleaned;
          }
        })
      )
      .on('data', (row) => {
        const cleanedRow = {};
        for (let [key, value] of Object.entries(row)) {
          const cleanKey = key.trim().replace(/^"|"$/g, '');
          cleanedRow[cleanKey] = value;
        }
        results.push(cleanedRow);
      })
      .on('end', () => {
        console.log(`✅ CSV cargado: ${results.length} filas desde ${filePath}`);
        resolve(results);
      })
      .on('error', (err) => {
        console.error(`❌ Error leyendo ${filePath}:`, err.message);
        reject(err);
      });
  });
}

// Cargar clientes
async function loadCustomers() {
  let customers;
  try {
    customers = await readCSV('./data/1_customers.csv');
  } catch (err) {
    console.error('❌ Error cargando clientes:', err.message);
    return;
  }

  for (const row of customers) {
    const { customer_id, name, phone, address, email } = row;

    if (!customer_id || !name || !email) {
      console.warn('⚠️ Fila omitida (faltan datos obligatorios):', { customer_id, name, email });
      continue;
    }

    try {
      await connection.execute(
        `INSERT IGNORE INTO customers (customer_id, name, phone, address, email) 
         VALUES (?, ?, ?, ?, ?)`,
        [customer_id, name, phone || null, address || null, email]
      );
    } catch (err) {
      console.error('❌ Error insertando cliente:', customer_id, err.message);
    }
  }
  console.log('✅ Customers loaded');
}

// Cargar facturas
async function loadInvoices() {
  let invoices;
  try {
    invoices = await readCSV('./data/2_invoices.csv');
  } catch (err) {
    console.error('❌ Error cargando facturas:', err.message);
    return;
  }

  for (const row of invoices) {
    // Mapeo de nombres: ajustado a tus campos reales
    const { 'Número de Factura': ID_bill, 'Monto Facturado': mount_bill, 'Periodo de Facturación': period_bill, 'Número de Identificación': customer_id } = row;

    if (!ID_bill || !mount_bill || !period_bill) {
      console.warn('⚠️ Fila omitida (datos incompletos):', { ID_bill, mount_bill, period_bill });
      continue;
    }

    // Convertir periodo "2024-06" a "2024-06-01"
    const periodDate = `${period_bill}-01`;

    try {
      await connection.execute(
        `INSERT IGNORE INTO invoices (ID_bill, mount_bill, period_bill) 
         VALUES (?, ?, ?)`,
        [ID_bill, parseFloat(mount_bill), periodDate]
      );
    } catch (err) {
      console.error('❌ Error insertando factura:', ID_bill, err.message);
    }
  }
  console.log('✅ Invoices loaded');
}

// Cargar transacciones
async function loadTransactions() {
  let transactions;
  try {
    transactions = await readCSV('./data/3_transactions.csv');
  } catch (err) {
    console.error('❌ Error cargando transacciones:', err.message);
    return;
  }

  for (const row of transactions) {
    // Mapeo exacto con los nombres del CSV y tabla
    const { 
      'ID de la Transacción': ID_transation,
      'Monto de la Transacción': mount_transation,
      'Tipo de Transacción': type_transation,
      'Fecha y Hora de la Transacción': date_hour_transation,
      'Estado de la Transacción': state_transation,
      'Monto Pagado': mount_paid,
      'Plataforma Utilizada': use_platform,
      'Número de Factura': invoice_id  // Asumimos que está en el CSV
    } = row;

    if (!ID_transation || !mount_transation || !date_hour_transation || !state_transation) {
      console.warn('⚠️ Fila omitida (campos obligatorios faltantes):', { ID_transation, invoice_id });
      continue;
    }

    try {
      await connection.execute(
        `INSERT IGNORE INTO transations 
        (ID_transation, mount_transation, type_transation, date_hour_transation, state_transation, mount_paid, use_platform) 
         VALUES (?, ?, ?, ?, ?, ?, ?)`,
        [
          ID_transation,
          parseFloat(mount_transation),
          type_transation || null,
          date_hour_transation,
          state_transation,
          parseFloat(mount_paid),
          use_platform || null
        ]
      );
    } catch (err) {
      console.error('❌ Error insertando transacción:', ID_transation, err.message);
    }
  }
  console.log('✅ Transactions loaded');
}

// --- Ejecución ---
try {
  await loadCustomers();
  await loadInvoices();
  await loadTransactions();
  await connection.end();
  console.log('📦 ¡Todos los datos se cargaron correctamente!');
} catch (err) {
  console.error('❌ Error crítico:', err.message);
  process.exit(1);
}