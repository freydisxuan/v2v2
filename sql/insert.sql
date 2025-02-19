insert into categories (name) values ('html');
insert into categories (name) values ('css');
insert into categories (name) values ('javascript');

insert into question (question_text, category_id) values ('wadahell', (select id from categories where name = 'html'));
insert into answer (answer_text, right_answer, question_id) values ('question for wadahell', true, (select id from question where question_text = 'wadahell'));