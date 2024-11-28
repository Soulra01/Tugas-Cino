-- Database: "SecureStorage"

-- --------------------------------------------------------

-- Table structure for table "categories"

CREATE TABLE categories (
  CategoryId SERIAL PRIMARY KEY,
  UserId INT REFERENCES users(UserId),
  CategoryName VARCHAR(255) DEFAULT NULL,
  CategoryDate DATE DEFAULT NULL
);

-- Dumping data for table "categories"

INSERT INTO categories (CategoryId, UserId, CategoryName, CategoryDate) VALUES
(2, 4, 'Bunga', '2023-11-21'),
(3, 4, 'AK47', '2023-11-21'),
(4, 6, 'Jam Tangan', '2023-11-21'),
(5, 6, 'Jam Dinding', '2023-11-21');

-- --------------------------------------------------------

-- Table structure for table "passwords"

CREATE TABLE passwords (
  password_id SERIAL PRIMARY KEY,
  UserId INT REFERENCES users(UserId),
  password VARCHAR(255) DEFAULT NULL
);

-- Dumping data for table "passwords"

INSERT INTO passwords (password_id, UserId, password) VALUES
(1, 1, '$2y$10$qsOGUgrGU33a2RLIvU9AkerkjPhyDX1rEiTAtAluVQCrobrFm5jGK'),
(2, 4, '$2y$10$QcFe/kGu7LcTRS3UGgMOvevpV9S0JbCuQ9qeNYC.fgMxVUKd0D.Tq'),
(3, 6, '$2y$10$O72V/2ekcqHqJBMwSCOLmumrP6VR9XuTH7GxQH2R5ajNLdmnob.Om');

-- --------------------------------------------------------

-- Table structure for table "sessions"

CREATE TABLE sessions (
  SessionId SERIAL PRIMARY KEY,
  UserId INT REFERENCES users(UserId),
  SessionToken VARCHAR(255) UNIQUE NOT NULL,
  LastAccessed TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- --------------------------------------------------------

-- Table structure for table "users"

CREATE TABLE users (
  UserId SERIAL PRIMARY KEY,
  Name VARCHAR(255) DEFAULT NULL,
  Email VARCHAR(255) DEFAULT NULL
);

-- Dumping data for table "users"

INSERT INTO users (UserId, Name, Email) VALUES
(1, 'Admin', 'admin@gmail.com'),
(4, 'JoshuaNam', 'Joshuarl@gmail.com'),
(6, 'huda', 'huda@gmail.com');

-- --------------------------------------------------------

-- No need to add AUTO_INCREMENT or engine settings in PostgreSQL.
