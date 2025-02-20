import pg from 'pg';
import dotenv from 'dotenv';

dotenv.config()

const { DATABASE_URL: connectionString } = process.env;

if (!connectionString) {
  console.error('Missing DATABASE_URL from env');
  process.exit(1);
} else {
  console.info(connectionString);
}

const pool = new pg.Pool({ 
  connectionString,
  ssl: {
    rejectUnauthorized: false
  }
 });

pool.on('error', (err) => {
  console.error('postgres error, exiting...', err);
  process.exit(1);
});

export async function categoriesFromDatabase() {
  const result = await query('SELECT * FROM categories');
  console.log('result :>> ', result);
  if (result?.rowCount > 0) {
    return result.rows;
  }

  return null;
}

export async function getMappedQAInCategory(id) {
  const questionsMapped = [];
  const questionsResults = await query('SELECT id, question FROM questions WHERE category_id = $1', [id]);
  for (let i = 0; i < questionsResults?.rows.length; i++) {
    const question = questionsResults?.rows[i]
    const answersResult = await query('SELECT id, answer, is_correct FROM answers WHERE question_id = $1', [question.id])
    questionsMapped.push({
      'question': [question.question],
      'answers': answersResult.rows.map((e) => (
        {
          'id': e.id,
          'answer': e.answer,
          'correct': e.is_correct
        }
      ))
    })
  }
  return questionsMapped;
}

export async function query(q, params) {
  let client;

  try {
    client = await pool.connect();
  } catch (e) {
    console.error('Unable to connect', e);
    return;
  }

  let result;
  try {
    result = await client.query(q, params);
  } catch (e) {
    console.error('Error selecting', e);
  } finally {
    client.release();
  }

//  await pool.end();

  return result;
}
