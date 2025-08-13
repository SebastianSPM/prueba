import express from 'express';
import mysql from 'mysql2/promise';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();
const port = 3000;

// Middleware para JSON
app.use(express.json());

// Servir tu HTML y archivos estáticos
app.use(express.static(__dirname));

// Conexión MySQL
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '12345',
  database: 'pd_sebastian_pereira_manglar'
});

// RUTA GET: listar clientes
app.get('/api/customers', async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM customers');
    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// RUTA POST: crear cliente
app.post('/api/customers', async (req, res) => {
  const { id, name, phone, address, email } = req.body;
  try {
    await pool.query(
      'INSERT INTO customers (customer_id, name, phone, address, email) VALUES (?, ?, ?, ?, ?)',
      [id, name, phone, address, email]
    );
    res.json({ message: 'Cliente creado' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// RUTA PUT: editar cliente
app.put('/api/customers/:id', async (req, res) => {
  const { name, phone, address, email } = req.body;
  const { id } = req.params;
  try {
    await pool.query(
      'UPDATE customers SET name=?, phone=?, address=?, email=? WHERE customer_id=?',
      [name, phone, address, email, id]
    );
    res.json({ message: 'Cliente actualizado' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// RUTA DELETE: eliminar cliente
app.delete('/api/customers/:id', async (req, res) => {
  const { id } = req.params;
  try {
    await pool.query('DELETE FROM customers WHERE customer_id=?', [id]);
    res.json({ message: 'Cliente eliminado' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// Iniciar servidor
app.listen(port, () => {
  console.log(`Servidor en http://localhost:${port}`);
});
