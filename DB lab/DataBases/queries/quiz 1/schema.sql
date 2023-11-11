--create database hospital_management_system
--use hospital_management_system


--create table Doctor(
--	doctor_id int primary key,
--	name nvarchar(50),
--	age int,
--	gender text,
--	address text
--);

--CREATE TABLE Patient (
--	patient_id int PRIMARY KEY,
--	name TEXT,
--	age int,
--	gender text,
--	address text,
--	disease text,
--	doctor_id int,
--	foreign key (doctor_id) REFERENCES Doctor(doctor_id)
--);


--create table Laboratory(
--	lab_id int primary key,
--	patient_id int,
--	doctor_id int,
--	date date,
--	amount money,
--	foreign key (doctor_id) REFERENCES Doctor(doctor_id),
--	foreign key (patient_id) REFERENCES Patient(patient_id)
--);


--create table Outpatient(
--	patient_id int primary key,
--	lab_no int,
--	date date,
--	foreign key (lab_no) references Laboratory(lab_id)
--);


--create table room(
--	room_no int primary key,
--	room_type nvarchar(50),
--	status text
--);


--create table Bill(
--	bill_no int primary key,
--	patient_id int,
--	doctor_charge int,
--	room_charge int,
--	no_of_days int,
--	lab_chargebill int,
--	status text,
--	foreign key (patient_id)references Patient(patient_id),
--);

--create table Inpatient(
--	patient_id int,
--	room_no int,
--	date_of_admn date,
--	date_of_dis date,
--	lab_no int,
--	foreign key (patient_id)references Patient(patient_id),
--	foreign key (lab_no)references Laboratory(lab_id),
--);

--alter table Doctor add specialization varchar(50);

--EXEC sp_rename 'Bill.lab_chargebill', 'lab_bill', 'COLUMN';

--alter table Laboratory add check (amount<=5)

--ALTER TABLE Laboratory
--ADD CONSTRAINT check_amount_laboratory
--CHECK (amount <= 5);

--INSERT INTO Doctor (doctor_id,name, age, gender, address) VALUES
--(1,'Salman',30,'male','123'),
--(2,'Numan',32,'male','124'),
--(3,'Usama',33,'male','125');


--INSERT INTO Patient (patient_id,name, age, gender, address,disease,doctor_id) VALUES
--(1,'Afaq',30,'male','123','flue',1),
--(2,'Moeez',32,'male','124','fever',2),
--(3,'Amna',33,'female','125','dengue',3);


--INSERT INTO Laboratory (doctor_id,patient_id, lab_id, date, address,amount) VALUES
--(1,'Afaq',30,'male','123','flue',1),
--(2,'Moeez',32,'male','124','fever',2),
--(3,'Amna',33,'female','125','dengue',3);

---	lab_id int primary key,
--	patient_id int,
--	doctor_id int,
--	date date,
--	amount money,