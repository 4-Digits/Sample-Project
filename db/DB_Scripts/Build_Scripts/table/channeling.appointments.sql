CREATE TABLE appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES channeling.patients(patient_id) ON DELETE CASCADE,
    doctor_id INT REFERENCES channeling.doctors(doctor_id) ON DELETE CASCADE,
    appointment_date TIMESTAMP NOT NULL,
);