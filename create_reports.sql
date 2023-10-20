
-- Query to get patients admitted on '2022-04-10' and stayed for 10 days or more
CREATE VIEW report_1_Patients_with_10_days_staying AS
SELECT FirstName, LastName , Patientid
FROM hospitaldb.patients
WHERE AdmissionDate = '2022-04-10' AND DATEDIFF(DischargeDate, AdmissionDate) >= 10;

-- Query to get doctors who visited patients of '2022-04-10' and stayed for 10 days or more from created view
CREATE VIEW report_2_Doctors_visited_patients AS
SELECT DISTINCT d.DoctorID, d.FirstName, d.LastName
FROM hospitaldb.doctors d
WHERE d.DoctorID IN (
    SELECT DISTINCT v.DoctorID
    FROM hospitaldb.visits v
    INNER JOIN report_1_Patients_with_10_days_staying p ON v.PatientID = p.PatientID
    WHERE v.DepartmentID = 1
);

-- Query to get patients got surgery in spring and the surgeon is Dr. Emily Brown
CREATE VIEW report_3_patieng_surgery_spring AS
SELECT p.PatientID, p.FirstName AS PatientFirstName, p.LastName AS PatientLastName,
       d.DoctorID, d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName
FROM hospitaldb.patients p
JOIN hospitaldb.surgeries s ON p.PatientID = s.PatientID
JOIN hospitaldb.doctors d ON s.DoctorID = d.DoctorID
WHERE MONTH(s.SurgeryDate) IN (3, 4, 5)
AND d.FirstName="Dr. Emily" AND d.LastName="Brown";

-- Query to get patients got services which patients get in inpatient department
CREATE VIEW report_4_services_of_inpatient_dept AS
SELECT DISTINCT v.ServiceID, s.ServiceName
FROM hospitaldb.visits v
JOIN hospitaldb.services s ON v.ServiceID = s.ServiceID
WHERE v.DepartmentID = 1;


-- Query to get services which Dr. Emily Brown provides
CREATE VIEW report_5_doctor_service AS
SELECT s.ServiceName
FROM hospitaldb.doctors d
JOIN hospitaldb.servicedr sd ON d.DoctorID = sd.DoctorID
JOIN hospitaldb.services s ON sd.ServiceID = s.ServiceID
WHERE d.FirstName = 'Dr. Emily' AND d.LastName = 'Brown';

-- Query to get patients services cost , patient name is Bob Johnson and get those services from inpatient department
CREATE VIEW report_6_cost_of_services AS
SELECT SUM(s.Cost) AS TotalCost
FROM hospitaldb.visits v
JOIN hospitaldb.patients p ON v.PatientID = p.PatientID
JOIN hospitaldb.doctors d ON v.DoctorID = d.DoctorID
JOIN hospitaldb.services s ON v.ServiceID = s.ServiceID
JOIN hospitaldb.departments dep ON v.DepartmentID = dep.DepartmentID
WHERE v.DepartmentID = 1
  AND p.FirstName = "Bob"
  AND p.LastName = "Johnson";
