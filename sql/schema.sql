CREATE TABLE IF NOT EXISTS categories (
  id serial primary key,
  name varchar(64) not null unique,
  created timestamp with time zone not null default current_timestamp
);

CREATE TABLE IF NOT EXISTS question(
  id serial primary key,
  question_text text,
  category_id int references categories(id),
  created timestamp with time zone not null default current_timestamp
);

CREATE TABLE IF NOT EXISTS answer(
  id serial primary key,
  question_id int references question(id),
  answer_text text,
  right_answer boolean
);