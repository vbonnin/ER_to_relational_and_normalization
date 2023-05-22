INSERT INTO Person (person_id, name, surname, birthday, gender)
VALUES (1, 'Jouad', 'El Ouardi', '1984-07-10', 'M'),
       (2, 'Victor', 'Bonnin', '1976-12-05', 'M');

INSERT INTO Speciality (speciality_id, name)
VALUES (1, 'cardiology'),
       (2, 'surgery');

INSERT INTO Doctor (doctor_id, person_id, speciality_id)
VALUES (1, 1, 1),
       (2, 2, 2);

INSERT INTO Patient (patient_id, person_id, address, phone_number, mail, insurance)
VALUES (1, 1, '123 St Palma', '600200300', 'jel@gmail.com', 'BlueCross'),
       (2, 2, '134 St Manacor', '600400500', 'vbon@gmail.com', 'Aetna');

INSERT INTO Medical_Consultation (consultation_id, date, time, doctor_id, patient_id)
VALUES (1, '2023-05-19', '10:00:00', 1, 1),
       (2, '2023-05-20', '11:00:00', 2, 2);

INSERT INTO Prescription (prescription_id, date, consultation_id)
VALUES (1, '2023-05-19', 1),
       (2, '2023-05-20', 2);

INSERT INTO Medication (medication_id, name, description)
VALUES (1, 'Paracetamol', 'headache medicine'),
       (2, 'Ibuprofeno', 'cough medicine');

INSERT INTO Prescription_Medication (prescription_id, medication_id)
VALUES (1, 1),
       (2, 2);