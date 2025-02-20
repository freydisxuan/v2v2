import express from 'express';
import { getDatabase } from './lib/db.client.js';
import { environment } from './lib/environment.js';
import { logger } from './lib/logger.js';
import { getMappedQAInCategory } from './lib/db.js';
import { validateInputs } from './lib/validation.js';
import xss from 'xss';
import dotenv from 'dotenv';

dotenv.config();

export const router = express.Router();

router.get('/', async (req, res) => {
  const result = await getDatabase()?.query('SELECT * FROM categories');

  const categories = result?.rows ?? [];

  res.render('index', { title: 'Forsíða', categories });
});

router.get('/spurningar/:category', async (req, res) => {
  const id = req.params.category;
  const titleResult = await getDatabase()?.query('SELECT name FROM categories where id = $1', [id]);
  const title = titleResult?.rows[0].name ?? 'Category not found';

  const data = await getMappedQAInCategory(id)
  console.log(data);
  res.render('category', { title, questions: data, id });
});

router.post('/spurningar/:category', async (req, res) => {
  const { category } = req.params;
  const user_answers = req.body;

  const correctAnswers = await getDatabase()?.query('SELECT questions.id as qid, answers.id as aid, question, answer FROM questions, answers WHERE is_correct = true AND question_id = questions.id AND category_id = $1', [category]);

  console.log(user_answers);
  const data = [];

  correctAnswers.rows.forEach((row, rowIndex) => {
    const user_answer = user_answers[rowIndex];
    let correct = false;
    console.log(row);
    if (row.answer === user_answer) {
      correct = true;
    }
  
    console.log(correct);
    data.push({ ...row, user_answer: user_answer, correct: correct });
  });

  res.render('results', { data, title: "Results" });
});

router.get('/form', async (req, res) => {
  const result = await getDatabase()?.query('SELECT * FROM categories');

  res.render('form', { title: 'Búa til spurningu', categories: result.rows });
});

router.post('/form', async (req, res) => {
  const { category, question, answer1, answer2, answer3, answer4, correct } = req.body;

  const answers = [answer1, answer2, answer3, answer4];

  const potentialErrors = validateInputs(question, answers);

  if (potentialErrors) {
    return res.status(500).render('error', { error: '500', message: potentialErrors })
  }

  const env = environment(process.env, logger);
  if (!env) {
    process.exit(1);
  }

  const db = getDatabase();

  const questionResult = await db?.query('INSERT INTO questions (question, category_id) VALUES ($1, $2) RETURNING id', [xss(question), category]);
  console.log(questionResult);
  if (!questionResult) {
    return res.status(500).json({ error: 'Something went wrong' });
  }
  await Promise.all(
    answers.map(async (answer, index) => {
      const result = await db?.query('INSERT INTO answers (answer, is_correct, question_id) VALUES ($1, $2, $3)',
      [xss(answer), index+1 === Number(correct) ? 'true' : 'false', questionResult.rows[0].id]);
      console.log(result);
    })
  );

  res.render('form-created', { title: 'Flokkur búinn til' });
});
