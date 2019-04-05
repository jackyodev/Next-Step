DROP DATABASE IF EXISTS nextstep;
CREATE DATABASE nextstep;

\c nextstep;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR NOT NULL UNIQUE,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR,
  email VARCHAR NOT NULL UNIQUE,
  password_digest VARCHAR NOT NULL
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  category VARCHAR NOT NULL
);

CREATE TABLE questions (
  id SERIAL PRIMARY KEY,
  category_id INT NOT NULL REFERENCES categories(id),
  question_body VARCHAR NOT NULL
);

CREATE TABLE answers (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  question_id INT NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  answer_body VARCHAR NOT NULL
);

CREATE TABLE feedbacks (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  answer_id INT NOT NULL REFERENCES answers(id) ON DELETE CASCADE,
  feedback_body VARCHAR NOT NULL
);

CREATE TABLE likes (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  answer_id INT NOT NULL REFERENCES answers(id) ON DELETE CASCADE
);

CREATE TABLE tips (
  id SERIAL PRIMARY KEY,
  tip_body VARCHAR NOT NULL
);

INSERT INTO users(username, first_name, last_name, email, password_digest) VALUES
('Jhenya', 'Jhenya', 'Ezhova', 'evgeniyaezhova@pursuit.org', 'password1'),
('jinsoo93', 'Alex', 'Park', 'alexparkqueens@gmail.com', 'password2'),
('thaiSonP', 'Tyson', 'Pan', 'tpan25@gmail', 'password3'),
('J@Pursuit', 'Jacky', 'O.', 'jackyong@pursuit.org', 'password4')

INSERT INTO categories(category) VALUES
('general'),
('creative')

INSERT INTO questions(category_id, question_body) VALUES
(1, 'What do you do to verify that your work is accurate?'),
(1, 'Describe a time you made an error. Why did you miss the mistake? How did you handle the situation?'),
(1, 'Can you describe a time when a co-worker made a mistake and you discovered it? What did you do?'),
(1, 'Can you describe a project that demonstrated your analytical skills?'),
(1, 'Can you tell me about a time when you had to analyze information? Why were you analyzing the information? What was your process?'),
(1, 'Can you talk about a time when you used your analytical skills to find a problem? How did you discover the problem? What did you do after you discovered it?'),
(1, 'Can you tell me about a time when you used your problem solving skills to find a solution to a problem?'),
(1, 'What steps do you take before making a decision?'),
(1, 'Can you talk about a time you had to make a decision with limited information? How did you determine what would be the best decision?'),
(1, 'Can you tell me about a time when you had to make an immediate decision?'),
(1, 'Can you tell me about a time when you felt pressure while making a decision? How did the pressure affect you?'),
(1, 'What’s the most difficult decision you’ve made at work? How did you come up with your decision?'),
(1, 'Can you talk about a decision you made that impacted your co-workers? How did you choose the right decision?'),
(1, 'Was there a decision you made that wasn’t popular? What did you do?'),
(1, 'Can you describe a decision that you regretted? Why did you regret it?'),
(1, 'Can you describe a time when you were in charge of a project? What would you do differently?'),
(1, 'Can you talk about a time when a project didn’t have a leader, but you took charge? Why did you take charge? What did you do?'),
(1, 'Can you tell me about a time when you had a difficult group to lead? What did you do to manage them?'),
(1, 'What was the toughest project you had to lead? Why was it difficult?'),
(1, 'What is the most difficult part of being a leader for you? What do you do about that?'),
(1, 'Can you describe something that challenged you as a leader? How did the challenge change you?'),
(1, 'What was your greatest achievement as a leader? What were you most proud of?'),
(1, 'Can you talk about a time when you motivated your team? How did you do it? How effective were your efforts?'),
(1, 'Can you describe a time when you saw a problem at work and created a solution for it.'),
(1, 'Can you tell me about a time you made a change at work?'),
(1, 'Can you talk about a project that you started? What did you do? What were the results?'),
(1, ' Can you tell me about a project that was implemented because of the work you did?'),
(1, 'Can you tell me about a time when you were bored at work and sought for more or different work? What steps did you take?'),
(1, 'Can you describe the process you use to set personal goals?'),
(1, 'Can you talk about a career goal you made? Did you reach it? What obstacles did you encounter?'),
(1, 'Can you tell me about a goal that you set but didn’t reach? Why didn’t you reach it? How did you feel?'),
(1, 'What goals did you set for your team? How did you keep people on track to meet the goals?'),
(1, 'What have you done to increase your number of customers?'),
(1, 'What is your greatest accomplishment in sales? How did you achieve that?'),
(1, 'Can you tell me about a time when you convinced a reluctant customer to make a purchase? How did you do it?'),
(1, 'Can you talk about a time when you had to negotiate with a customer? What did you do? What was the outcome?'),
(1, 'Can you describe the steps you take to develop a relationship with a customer?'),
(1, 'Can you tell me about a time that you were unsure about a customer’s request? What did you do?'),
(1, 'Can you talk about a time when you and a customer miscommunicated? What did you do to repair communication?'),
(1, 'Can you talk about a time when you dealt with an upset or angry customer? What did you do? Is there anything you would have done differently?'),
(1, 'Can you tell me about a time you convinced a customer to stay with the business? What steps did you take?'),
(1, 'Can you describe a time when you went out of your way to please a customer?'),
(1, 'Have you ever defended a customer? Why? How did your co-workers or boss react?'),
(1, 'Was there ever a time when a co-worker’s customer was passed off to you? How did you let the customer know? How did you build relationship and trust with them?'),
(1, 'Can you tell me about how you communicated with your previous bosses?'),
(1, 'Can you tell me about a time when you communicated with a person you didn’t like?'),
(1, 'Can you talk about a time when your communication failed? What caused the problem? How did you handle the situation?'),
(1, 'Can you describe a time when you had to work with a remote co-worker? How did you stay in touch? What difficulties did you experience?'),
(1, 'Have you ever given a speech or presentation for your job? How did you prepare? How was the presentation received?'),
(1, ' Can you describe a time when you had to give a presentation without preparation? What did you do?'),
(1, 'Can you talk about how you’ve used your written communication skills?'),
(1, 'Can you tell me about a time when you used a communication method that was outside the norm for what you were doing? What did you do? Was it effective?'),
(1, 'Can you describe a time when you had a conflict with someone at work? What did you do?'),
(1, 'Can you describe a time when you dealt with a co-worker you didn’t like?'),
(1, 'Can you tell me how you communicate with someone who doesn’t like you?'),
(1, 'Can you tell me about a time when you disagreed with a manager? What did you do?'),
(1, 'How have you maintained relationships with your co-workers? What skill do you use?'),
(1, 'Was there ever a time that you didn’t get along with a customer? What did you do?'),
(1, 'What role do you normally take on a team? Why?'),
(1, 'Can you tell me about your most recent experience working with a team? What was your role? How did you interact with the other team members?'),
(1, 'Can you talk about a time when team members disagreed with you? What did you do?'),
(1, 'Can you describe a time when you tried to solve a dispute within the team? What was the result?'),
(1, 'Was there ever a time when you were part of a team where the people didn’t get along? What happened? What did you do?'),
(1, 'Can you talk about a time when your team members had to compromise? What was the result?'),
(1, 'Can you describe a time when a team member wasn’t doing their work? What did you do?'),
(1, 'Can you describe a time when you had to delegate work among a team? How did you decide who would do each task? Is there anything you would do differently?'),
(1, 'Can you tell me about a time when you let your team down? What did you do? How did you react?'),
(1, 'When you schedule out the work you need to do, how do you decide what to do first?'),
(1, 'Can you tell me about a project you were in charge of? How did you organize the tasks and make sure everything got done?'),
(1, 'Can you describe a time when you were part of multiple projects at the same time? How did you handle the workload?'),
(1, 'When you have multiple requests from customers or co-workers, how do you prioritize them?'),
(1, 'Can you tell me about a time when you were behind on a project? What did you do?'),
(1, 'Can you describe a stressful work situation you experienced? How did you handle the situation?'),
(1, 'What was your most stressful project? Why was it stressful? What did you do to manage the stress? How did the project turn out?'),
(1, 'Can you tell me about a time when you saw a situation that could have become stressful? What did you do to prevent it?'),
(1, 'Can you tell me about a time when you tried to reduce stress for a co-worker?'),
(1, 'Can you tell me how you handled your transition between different jobs or positions in the past?'),
(1, 'Can you describe a time when changes happened that you couldn’t control? How did you react?'),
(1, 'Can you describe a time when you experienced rapid change? How did you handle the situation?'),
(1, 'Can you tell me about a time when you changed the course of a project? How did you relay the changes to your team? Is there anything you wish you would have done differently?'),
(1, 'Can you talk about a time when you had to adapt to a co-worker’s work style to finish a task? What did you do?'),
(1, 'Can you think of a time when you weren’t comfortable with a change? What did you do?'),
(1, 'Can you describe a time when a manager asked you to come up with a creative way to complete a project? What steps did you take?'),
(1, 'Can you tell me about a problem you solved in a unique way? What happened?'),
(1, 'Can you describe a project where none of the usual paths to completion worked? What did you do instead?'),
(1, 'Can you talk about a time when you presented a creative idea to your co-workers?'),
(1, 'Can you tell me about a time when your creative idea received resistance from co-workers? How did you react? How did you feel?'),
(1, 'Can you tell me about a time when your creative idea failed? How did you feel? What would you do differently?'),
(1, 'Can you describe a time when a co-worker or customer questioned your honesty? What did you do?'),
(1, 'Can you tell me about a time when you followed a rule that you didn’t agree with? Why did you comply? How did you feel?'),
(1, 'Can you talk about a time when it was difficult to be honest?'),
(1, 'Was there ever a time when you weren’t honest at work? What happened?'),
(1, 'Has there ever been a situation where you thought it was better to be dishonest? Why? What did you end up doing?'),
(1, 'Can you tell me about a time when you found out that a co-worker was doing something wrong? What did you do?'),
(1, 'Can you talk about a setback you had at work? What did you do?'),
(1, 'Describe a time you faced a problem at work? What did you do? What would you do differently?'),
(1, 'Can you tell me about a time you had to work under a lot of pressure? How did you handle the situation?'),
(1, 'Can you describe a time that you faced a challenge at work? How did you feel? What steps did you take?'),
(1, 'Was there ever a time you had to compete against co-workers? What were the results?'),
(1, 'Can you tell me about a time when you made a mistake? What did you do? What did you learn from the situation? Was there anything you’d do differently?'),
(2, 'If you could compare yourself with any animal, which would it be and why?'),
(2, 'How many square feet of pizza are eaten in the U.S. each year?'),
(2, 'What was the last gift you gave someone?'),
(2, 'If you had a choice between two superpowers, being invisible or flying, which would you choose?'),
(2, 'Are you a hunter or a gatherer?'),
(2, 'If you had to be shipwrecked on a deserted island, but all your human needs—such as food and water—were taken care of, what two items would you want to have with you?'),
(2, 'We finish the interview and you step outside the office and find a lottery ticket that ends up winning $10 million. What would you do?'),
(2, 'If you were a tree, what kind of tree would you be and why?'),
(2, '9. You’ve been given an elephant. You can’t give it away or sell it. What would you do with the elephant?'),
(2, '10. Why are manholes round?'),
(2, '11. What do you think of garden gnomes?'),
(2, '12. How would you solve problems if you were from Mars?'),
(2, 'Describe the color yellow to somebody who is blind.'),
(2, '14. What’s the most interesting thing about you that we wouldn’t learn from your resume alone? '),
(2, 'Teach me something I don’t know in the next five minutes.'),
(2, 'If I were to hire you for this job and I granted you three promises with regard to working here, what would they be?'),
(2, 'Pretend you’re our CEO. What three concerns about the firm’s future keep you up at night?'),
(2, 'Which two organizations outside your own do you know the most people at and why?'),
(2, 'What is the funniest thing that has happened to you recently?'),
(2, 'Any advice for your previous boss?'),
(2, 'How would you convince someone to do something they didn’t want to do?'),
(2, 'If You Could Have Dinner With Three Famous People That Are No Longer Living, Who Would You Ask?'),
(2, 'Jeff Bezos walks into your office and says you can have a million dollars to launch your best entrepreneurial idea. What is it?'),
(2, 'Pick two celebrities to be your parents.'),

INSERT INTO answers(question_id, user_id, answer_body) VALUES
()

INSERT INTO feedbacks(user_id, answer_id, feedback_body) VALUES
()

INSERT INTO likes(user_id, answer_id) VALUES
()

INSERT INTO tips(tip_body) VALUES
()
