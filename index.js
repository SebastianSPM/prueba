import express from 'express';
import mysql from 'mysql2/promise';
import cors from 'cors';

const app = express();
app.use(cors());
app.use(express.json());

app.use(express.static('public'));

// Conexión a DB
const dbConfig = {
  host: 'localhost',
  user: 'root',
  password: '12345',
  database: 'pd_sebastian_pereira_manglar'
};

// Ruta: GET todos los clientes
app.get('/api/customers', async (req, res) => {
  try {
    const conn = await mysql.createConnection(dbConfig);
    const [rows] = await conn.execute('SELECT * FROM customers');
    await conn.end();
    res.json(rows);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// Ruta: GET cliente por ID
app.get('/api/customers/:id', async (req, res) => {
  try {
    const conn = await mysql.createConnection(dbConfig);
    const [rows] = await conn.execute('SELECT * FROM customers WHERE customer_id = ?', [req.params.id]);
    await conn.end();
    if (rows.length === 0) return res.status(404).json({ message: 'Customer not found' });
    res.json(rows[0]);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// Ruta: POST nuevo cliente
app.post('/api/customers', async (req, res) => {
  const { customer_id, name, phone, address, email } = req.body;

  if (!customer_id || !name || !email) {
    return res.status(400).json({ message: 'Missing required fields' });
  }

  try {
    const conn = await mysql.createConnection(dbConfig);
    await conn.execute(
      `INSERT INTO customers (customer_id, name, phone, address, email) 
       VALUES (?, ?, ?, ?, ?)`,
      [customer_id, name, phone, address, email]
    );
    await conn.end();
    res.status(201).json({ message: 'Customer created' });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// Ruta: PUT actualizar cliente
app.put('/api/customers/:id', async (req, res) => {
  const { name, phone, address, email } = req.body;
  try {
    const conn = await mysql.createConnection(dbConfig);
    const [result] = await conn.execute(
      `UPDATE customers SET name = ?, phone = ?, address = ?, email = ? WHERE customer_id = ?`,
      [name, phone, address, email, req.params.id]
    );
    await conn.end();
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Customer not found' });
    res.json({ message: 'Customer updated' });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// Ruta: DELETE cliente
app.delete('/api/customers/:id', async (req, res) => {
  try {
    const conn = await mysql.createConnection(dbConfig);
    const [result] = await conn.execute('DELETE FROM customers WHERE customer_id = ?', [req.params.id]);
    await conn.end();
    if (result.affectedRows === 0) return res.status(404).json({ message: 'Customer not found' });
    res.json({ message: 'Customer deleted' });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});