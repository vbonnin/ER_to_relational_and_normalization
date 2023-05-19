CREATE TABLE Person (
  person_id INT PRIMARY KEY,
  name VARCHAR(255),
  surname VARCHAR(255),
  birthday DATE,
  gender CHAR(1)
);

CREATE TABLE Doctor (
  doctor_id INT PRIMARY KEY,
  person_id INT,
  FOREIGN KEY (person_id) REFERENCES Person(person_id),
  FOREIGN KEY (speciality_id) REFERENCES Speciality(speciality_id)
);

CREATE TABLE Patient (
  patient_id INT PRIMARY KEY,
  person_id INT,
  address VARCHAR(255),
  phone_number VARCHAR(15),
  mail VARCHAR(255),
  insurance VARCHAR(255),
  FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE Speciality (
  speciality_id INT PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE Medical_Consultation (
  consultation_id INT PRIMARY KEY,
  date DATE,
  time TIME,
  doctor_id INT,
  patient_id INT,
  FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id),
  FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

CREATE TABLE Prescription (
  prescription_id INT PRIMARY KEY,
  date DATE,
  consultation_id INT,
  FOREIGN KEY (consultation_id) REFERENCES Medical_Consultation(consultation_id)
);

CREATE TABLE Medication (
  medication_id INT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255)
);

CREATE TABLE Prescription_Medication (
  prescription_id INT,
  medication_id INT,
  FOREIGN KEY (prescription_id) REFERENCES Prescription(prescription_id),
  FOREIGN KEY (medication_id) REFERENCES Medication(medication_id),
  PRIMARY KEY (prescription_id, medication_id)
);