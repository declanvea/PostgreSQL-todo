DROP TABLE todos;

CREATE TABLE todos(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(999999) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP DEFAULT NOW(),
  completed_at TIMESTAMP
);

INSERT INTO todos (title, details, priority, completed_at)
VALUES
('Jon', 'Prepare crockpot for the big Arsenal match Saturday morning', 4, NULL),
('Matt', 'Get dog food', 3, NOW()),
('Chelsea', 'Fill car gas tank up before road trip', 2, NULL),
('Adam', 'Go to grocery', 5, NULL),
('Sam', 'Eat lots of flamming hot cheetos', 1, NULL);

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = NOW() WHERE id = 3;

DELETE FROM todos WHERE completed_at > '2017-08-27';
