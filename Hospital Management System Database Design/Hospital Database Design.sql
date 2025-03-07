CREATE TABLE doctors(
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(105) NOT NULL,
    Specialization VARCHAR(105) NOT NULL,
    Phone VARCHAR(14) NOT NULL
);

INSERT INTO doctors(Name,`Specialization`,`Phone`)
VALUES('nila','dentist','012578900'),
        ('nila','dentist','012578900'),
        ('nila','dentist','012578900'),
        ('nila','dentist','012578900'),
        ('nila','dentist','012578900');



CREATE TABLE patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(105) NOT NULL,
    Age INT NOT NULL,
    Phone INT,
    Gender VARCHAR(8)  
);

INSERT INTO patients(PatientID,`Age`,`Phone`,`Gender`)
VALUES('Meta','20','012576900','Female'),
        ('Meta','20','012576900','Female'),
        ('Meta','20','012576900','Female'),
        ('Meta','20','012576900','Female'),
        ('Meta','20','012576900','Female');
     


CREATE TABLE Appointments(
    AppointmentsID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Status INT
);

INSERT INTO Appointments(`Date`,`Time`,`Status`)
VALUES('12-02-2024','10am','Pending'),
    ('12-02-2024','10am','Pending'),
    ('12-02-2024','10am','Pending'),
    ('12-02-2024','10am','Pending'),
    ('12-02-2024','10am','Pending');
    


CREATE TABLE Departments(
    DepartmentsID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(105) NOT NULL,
    Location VARCHAR(105) NOT NULL  
);

INSERT INTO Departments(`Name`,`Location`)
VALUES('Medicine','Dhaka'),
        ('Medicine','Dhaka'),
        ('Medicine','Dhaka'),
        ('Medicine','Dhaka'),
        ('Medicine','Dhaka');
     



CREATE TABLE `conform_appointments`(
    `fixed_appointment` INT AUTO_INCREMENT PRIMARY KEY,
    `patient_id` INT,
    `doctors_id` INT,
    `department_id` INT,
    `appointment_id` INT,
    `conform_status` VARCHAR(12) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() on update CURRENT_TIMESTAMP(), 


    FOREIGN KEY (`patient_id`) REFERENCES `patients`(`patient_id`) ON DELETE CASECADE,
    FOREIGN KEY (`doctors_id`) REFERENCES `doctors`(`doctors_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (`department_id`) REFERENCES `departments`(`department_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (`appointment_id`) REFERENCES `appointments`(`appointment_id`) ON DELETE RESTRICT ON UPDATE CASCADE

);




















