use eHRMApp;

-- Inserts the application roles
insert into Role VALUES (1,'Default'),(2,'Doctor'),(3,'Nurse'),(4,'Administrative'),(5,'Director');
-- Insert the professionals
insert into Professional (pk,user,password,name,surname) values (1,'jorge','1111','Jorge','Cuellar'), (2,'miguel','1111','Miguel','Garcia'), (3,'karen','1111','Karen','Sraderr'), (4,'alice','1111','Alice','Gonzalez'), (5,'narciso','1111','Marti','Narciso');
-- Link professionals with roles
insert into Professional_myRole__Role_users (Professional_myRole,Role_users) values (1,2),(2,2),(3,3),(4,4),(5,5);
-- Insert director
insert into Director (pk) values (1);
-- Insert administrative
insert into Administrative (pk) values (1);
-- Insert doctors
insert into Doctor (pk,status,medicalLicense) values (1,true,'1001'), (2,true,'1002');
-- Insert nurse
insert into Nurse (pk,nursingLicense) values (1,'2001');
-- Link director,administrative, doctors and nurses with professionals
insert into Director_professional__Professional_asDirector (Professional_asDirector,Director_professional) values (5,1);
insert into Administrative_professional__Professional_asAdministrative(Professional_asAdministrative,Administrative_professional) values (4,1);
insert into Doctor_professional__Professional_asDoctor (Professional_asDoctor,Doctor_professional) values (1,1), (2,2);
insert into Nurse_professional__Professional_asNurse (Professional_asNurse,Nurse_professional) values (3,1);

-- Insert medical center
insert into MedicalCenter (pk,address,country,name,zipCode,city) values (1,'Ramistrasse 100','Swissland','North Hospital',8006,'Zurich');
-- Insert departments
insert into Department (pk,location,name) values (1,'First floor','Department N1'), (2,'Second floor','Department N2');
-- Link the medical center and the departments
insert into Department_belongsTo__MedicalCenter_departments (MedicalCenter_departments,Department_belongsTo) values (1,1),(1,2);
-- Link the professionals and medical centers
insert into MedicalCenter_employees__Professional_worksIn(Professional_worksIn,MedicalCenter_employees) values (1,1),(2,1),(3,1),(4,1),(5,1);
-- Link doctors and departments
insert into Department_doctors__Doctor_departments(Doctor_departments,Department_doctors) values (1,1),(2,2);
-- Link nurses and departments
insert into Department_nurses__Nurse_departments(Nurse_departments,Department_nurses) values (1,2);

-- Insert patients
insert into Patient(pk,vip) values (1,0), (2,1);
insert into ContactInfo (pk,birthDate,surname,gender,id,address,name) values (1,'80-01-25','Smith','Male','1','Clausiusstrasse 38, Zurich','Peter'), (2,'78-04-20','Carter','Male','2','Leonhardstrasse 25A, Zurich','Bob');
insert into AllocationInfo (pk,floor,room) values (1,'1','108'), (2,'1','109');
insert into AdministrativeInfo (pk,insurance,accountNumber) values (1,'Adeslas','10848753'), (2,'Adeslas','10123753');
insert into SocialInfo (pk,description) values (1,'Drug consumer'), (2,'Alcoholism problems two years ago');
insert into PublicInfo (pk,allergies,bloodType,medicineRestrictions,diabetes,foodRestrictions) values (1,'None','A-','Prinperan','None','Lactose intolerance'), (2,'Pollen and cats','B-','Penicillin','None','None');
insert into MedicalInfo (pk) values (1),(2);
insert into MedicalCase (pk,description,endDate,id,startDate) values (1,'Strong stomachache','2011-11-26 11:30:45','1001','2011-11-15 09:35:04'), (2,'Cold','2012-02-01 10:45:32','1002','2012-01-26 14:25:24'), (3,'Broken left arm','2012-01-14 11:45:32','2001','2012-01-14 11:15:24'), (4,'Appendicitis','2012-02-02 17:34:09','3001','2012-01-30 08:17:44'), (5,'Backache','2012-01-15 16:46:09','4001','2012-01-15 14:51:52');

insert into ContactInfo_patient__Patient_contact (ContactInfo_patient,Patient_contact) values (1,1), (2,2);
insert into AllocationInfo_patient__Patient_allocation (AllocationInfo_patient,Patient_allocation) values (1,1), (2,2);
insert into AdministrativeInfo_patient__Patient_administrative (AdministrativeInfo_patient,Patient_administrative) values (1,1), (2,2);
insert into Patient_social__SocialInfo_patient (Patient_social,SocialInfo_patient) values (1,1), (2,2);
insert into Patient_public__PublicInfo_patient (PublicInfo_patient,Patient_public) values (1,1), (2,2);
insert into MedicalInfo_patient__Patient_medical (Patient_medical,MedicalInfo_patient) values (1,1), (2,2);
insert into MedicalCase_medicalInfo__MedicalInfo_cases (MedicalInfo_cases,MedicalCase_medicalInfo) values (1,1), (1,2), (1,3), (2,4), (2,5);
-- TODO: add eHRs and link them to their cases
-- Link patients to doctors
insert into Doctor_patients__Patient_doctor (Doctor_patients,Patient_doctor) values (1,1), (2,2);
-- Link patients and departments
insert into Department_patients__Patient_department (Patient_department,Department_patients) values (1,1), (2,2);
