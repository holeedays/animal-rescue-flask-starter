-- STUDENT TASK: define two tables named dogs and cats.
-- Suggested columns for each table:
-- id: INTEGER PRIMARY KEY
-- name: TEXT
-- age: INTEGER (years)
-- breed: TEXT
-- description: TEXT
--
-- Write your CREATE TABLE statements below.
-- Use IF NOT EXISTS if you want initialization to preserve existing tables.

CREATE TABLE IF NOT EXISTS dogs (
    id INTEGER PRIMARY KEY,
    -- NOTE: sqlite effectively ignores the character limit in VARCHAR() so we just check the length
    -- during data insertion
    name VARCHAR(50) NOT NULL CHECK(length(name) <= 50),
    age INTEGER NOT NULL CHECK(age >= 0),
    breed TEXT NOT NULL,
    -- description can be filled or will be empty 
    description TEXT DEFAULT "" 
);

-- the cats table is exactly the same as the dogs table
CREATE TABLE IF NOT EXISTS cats (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL CHECK(length(name) <= 50),
    age INTEGER NOT NULL CHECK(age >= 0),
    breed TEXT NOT NULL,
    description TEXT DEFAULT "" 
);
