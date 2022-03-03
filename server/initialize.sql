DROP TABLE IF EXISTS watchlist, users;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  registration_date DATE,
  PRIMARY KEY (id)
);

CREATE TABLE watchlist (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT,
  ticker VARCHAR(10),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id)
  REFERENCES users (id)
    ON DELETE CASCADE
);

INSERT INTO users
	(first_name, last_name, email, registration_date)
VALUES	
	();
    
INSERT INTO watchlist
	(ticker)
VALUES
	();


