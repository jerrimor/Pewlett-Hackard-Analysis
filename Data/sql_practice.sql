-- CREATE TABLE people (
-- 	name VARCHAR(30) NOT NULL,
-- 	has_pet BOOLEAN DEFAULT false,
-- 	pet_type VARCHAR(10) NOT NULL,
-- 	pet_name VARCHAR(30),
-- 	pet_age INT
-- );

INSERT INTO people (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty', 10),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Peter', true, 'cat', 'Franklin', 2),
  ('Dave', true, 'dog', 'Queso', 1);
  
  
SELECT pet_type, pet_name
from people
where pet_type = 'dog'
and pet_age < 5

  
