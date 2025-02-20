CREATE TABLE IF NOT EXISTS categories (
  id serial primary key,
  name varchar(64) not null unique
);
CREATE TABLE IF NOT EXISTS questions (
id serial primary key,
question text not null,
category_id int references categories(id) on delete cascade
);
CREATE TABLE IF NOT EXISTS answers (
id serial primary key,
answer text not null,
is_correct boolean default false,
question_id int references questions(id) on delete cascade
);