const express = require('express');
const session = require('express-session');
const bodyParser = require('body-parser');
const cors = require('cors');
const pool = require('./db');
const app = express();
const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');


app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));







app.post('/login', async (req, res) => {
  try {
    const { username, password } = req.body;

    const client = await pool.connect();

    const query = `
      SELECT * FROM users
      WHERE username = $1
    `;

    const result = await client.query(query, [username]);
    const user = result.rows[0];

    if (!user) {
      return res.status(401).json({ error: 'Неверное имя пользователя или пароль' });
    }

    const passwordMatch = await bcrypt.compare(password, user.password);

    if (!passwordMatch) {
      return res.status(401).json({ error: 'Неверное имя пользователя или пароль' });
    }


    res.status(200).json({ message: 'Вход выполнен успешно', user: user.username });

    client.release();
  } catch (error) {
    console.error('Ошибка при входе в аккаунт:', error.message);
    res.status(500).json({ error: 'Ошибка сервера' });
  }
});

app.post('/register', async (req, res) => {
  try {
    const { username, email, password } = req.body;

    const hashedPassword = await bcrypt.hash(password, 10);

    const client = await pool.connect();

    const query = `
      INSERT INTO users (username, email, password)
      VALUES ($1, $2, $3)
      RETURNING *
    `;

    const values = [username, email, hashedPassword];

    const result = await client.query(query, values);
    const registeredUser = result.rows[0];

    res.status(201).json({ message: 'Пользователь успешно зарегистрирован', user: registeredUser });

    client.release();
  } catch (error) {
    console.error('Ошибка при регистрации пользователя:', error.message);
    res.status(500).send('Ошибка сервера');
  }
});






app.post('/addProduct/:page', async (req, res) => {
  try {
    const { product_name, product_description, product_review, product_img, product_price } = req.body;
	
	const { page } = req.params;

    const client = await pool.connect();

    const query = `
      INSERT INTO product_${page} (product_name, product_description, product_review, product_img, product_price)
      VALUES ($1, $2, $3, $4, $5)
      RETURNING *
    `;

    const values = [product_name, product_description, product_review, product_img, product_price];

    const result = await client.query(query, values);
    const insertedProduct = result.rows[0];

    res.status(201).json({ message: 'Товар успешно добавлен', product: insertedProduct });

    client.release();
  } catch (error) {
    console.error('Ошибка при добавлении товара:', error.message);
    res.status(500).send('Ошибка сервера');
  }
});




app.get('/getProducts/proc', async (req, res) => {
  try {
    const client = await pool.connect();

    const query = `
      SELECT * FROM product_proc
    `;

    const result = await client.query(query);
    const products = result.rows;

    res.json({ products });

    client.release();
  } catch (error) {
    console.error('Ошибка при получении данных о товарах:', error.message);
    res.status(500).json({ error: 'Ошибка сервера' });
  }
});

app.get('/getProducts/gpu', async (req, res) => {
  try {
    const client = await pool.connect();

    const query = `
      SELECT * FROM product_gpu
    `;

    const result = await client.query(query);
    const products = result.rows;

    res.json({ products });

    client.release();
  } catch (error) {
    console.error('Ошибка при получении данных о товарах:', error.message);
    res.status(500).json({ error: 'Ошибка сервера' });
  }
});

app.get('/getProducts/motherboard', async (req, res) => {
  try {
    const client = await pool.connect();

    const query = `
      SELECT * FROM product_motherboard
    `;

    const result = await client.query(query);
    const products = result.rows;

    res.json({ products });

    client.release();
  } catch (error) {
    console.error('Ошибка при получении данных о товарах:', error.message);
    res.status(500).json({ error: 'Ошибка сервера' });
  }
});


app.get('/getProducts/ram', async (req, res) => {
  try {
    const client = await pool.connect();

    const query = `
      SELECT * FROM product_ram
    `;

    const result = await client.query(query);
    const products = result.rows;

    res.json({ products });

    client.release();
  } catch (error) {
    console.error('Ошибка при получении данных о товарах:', error.message);
    res.status(500).json({ error: 'Ошибка сервера' });
  }
});

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Сервер запущен на порту ${PORT}`);
});