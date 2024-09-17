CREATE TABLE channeling.patients (
    patient_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES channeling.users(user_id) ON DELETE CASCADE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    phone_number VARCHAR(15) NOT NULL
);
