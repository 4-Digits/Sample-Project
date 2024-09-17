CREATE TABLE IF NOT EXISTS channeling.users (
  user_id SERIAL PRIMARY KEY,
  created_at TIMESTAMP(6) NOT NULL,
  username VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  role VARCHAR(50) CHECK (role IN ('patient', 'doctor', 'admin')) NOT NULL
);
