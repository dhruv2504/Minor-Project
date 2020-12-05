CREATE database db;
USE db;
CREATE TABLE books (
  bid int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title varchar(30) DEFAULT NULL,
  author varchar(30) DEFAULT NULL,
  status varchar(30) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE books_issued (
  bid int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  issuedto varchar(30) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM books;
SELECT * FROM books_issued;