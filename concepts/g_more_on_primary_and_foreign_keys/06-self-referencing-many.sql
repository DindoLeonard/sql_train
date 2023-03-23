CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(300) NOT NULL
);

CREATE TABLE users_friends (
  user_id INT,
  friend_id INT,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
  FOREIGN KEY (friend_id) REFERENCES users (id) ON DELETE CASCADE,
  CHECK (user_id < friend_id), -- to make sure that there will be no pair expressing the same relationships
  PRIMARY KEY (user_id, friend_id)
);
