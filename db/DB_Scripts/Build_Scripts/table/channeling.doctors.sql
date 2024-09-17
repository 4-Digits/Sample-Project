CREATE TABLE channeling.doctors (
    doctor_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES channeling.users(user_id) ON DELETE CASCADE,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    specialty VARCHAR(100),
    phone_number VARCHAR(15) NOT NULL
);
