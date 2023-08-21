CREATE TABLE Doctors (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    specialty TEXT
);

CREATE TABLE Patients (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    date_of_birth DATE
);

CREATE TABLE Diseases (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Visits (
    id SERIAL PRIMARY KEY,
    doctor_id INTEGER REFERENCES Doctors(id),
    patient_id INTEGER REFERENCES Patients(id),
    visit_date TIMESTAMP NOT NULL
);

CREATE TABLE Diagnoses (
    visit_id INTEGER REFERENCES Visits(id),
    disease_id INTEGER REFERENCES Diseases(id),
    PRIMARY KEY (visit_id, disease_id)
);
