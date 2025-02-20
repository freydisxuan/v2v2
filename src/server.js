import express from 'express';
import { router } from './routes.js';
import dotenv from 'dotenv';
import { fileURLToPath } from 'node:url'
import path from 'node:path';

dotenv.config();

const app = express();

app.use(express.urlencoded({ extended: true }));

const __dirname = path.dirname(fileURLToPath(import.meta.url));

const viewsPath = new URL('./views', import.meta.url).pathname;
app.set('views', viewsPath);
app.set('view engine', 'ejs');

app.use(express.static(path.join(__dirname, '../public')));
app.use('/', router);

app.use((req, res) => {
  res.status(404).render('error', { error: '404', message: 'Not found'});
})

app.use((err, req, res, next) => {
  res.status(500).render('error').json({ error: '500', message: 'Someting didnt go quite right'})
})

const hostname = process.env.NODE_ENV === 'production' ? '0.0.0.0' : '127.0.0.1';
const port = process.env.PORT || 3000;

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
