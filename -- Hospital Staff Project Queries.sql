-- Hospital Staff Project Queries

-- 1. Find total patients treated by each doctor
SELECT d.name, COUNT(p.patient_id) AS total_patients
FROM Doctors d
LEFT JOIN Patients p ON d.doctor_id = p.doctor_id
GROUP BY d.name;

-- 2. Find average salary of nurses department-wise
SELECT department, AVG(salary) AS avg_salary
FROM Nurses
GROUP BY department;

-- 3. Find patients who stayed more than 7 days
SELECT name, DATEDIFF(discharged_date, admitted_date) AS stay_duration
FROM Patients
WHERE DATEDIFF(discharged_date, admitted_date) > 7;

-- 4. Find doctor who generated maximum revenue (assume fee = 500 per patient)
SELECT d.name, COUNT(p.patient_id)*500 AS total_revenue
FROM Doctors d
JOIN Patients p ON d.doctor_id = p.doctor_id
GROUP BY d.name
ORDER BY total_revenue DESC
LIMIT 1;

-- 5. List doctors and nurses working in the same department
SELECT d.name AS doctor, d.specialization, n.name AS nurse, n.shift
FROM Doctors d
JOIN Nurses n ON d.specialization = n.department;

-- 6. Find the youngest and oldest patient treated
SELECT MIN(age) AS youngest, MAX(age) AS oldest FROM Patients;

-- 7. Find total salary cost of hospital staff (doctors + nurses)
SELECT (SELECT SUM(salary) FROM Doctors) + (SELECT SUM(salary) FROM Nurses) AS total_salary_cost;

-- 8. Find all patients treated by 'Dr. Mehta'
SELECT p.name, p.disease
FROM Patients p
JOIN Doctors d ON p.doctor_id = d.doctor_id
WHERE d.name = 'Dr. Malhotra';

-- 9. Count male vs female patients
SELECT gender, COUNT(*) AS count
FROM Patients
GROUP BY gender;

-- 10. Find department with highest number of nurses
SELECT department, COUNT(*) AS nurse_count
FROM Nurses
GROUP BY department
ORDER BY nurse_count DESC
LIMIT 1;