CREATE TABLE patients (
patient_id INTEGER PRIMARY KEY,
patient_name TEXT,
diagnosis_code TEXT,
age INTEGER,
last_admission_date TEXT,
is_active INTEGER
);

CREATE TABLE eligibility_rules (
rule_id INTEGER PRIMARY KEY,
diagnosis_code TEXT,
min_age INTEGER,
max_age INTEGER,
requires_recent_admission INTEGER
);

-- Insert sample patients
INSERT INTO patients VALUES
(1, 'John Doe', 'I10', 72, '2023-10-15', 1),
(2, 'Jane Smith', 'E11', 45, '2024-01-20', 1),
(3, 'Bob Johnson', 'I10', 68, '2022-12-01', 1),
(4, 'Alice Brown', 'M54', 55, NULL, 1),
(5, 'Charlie Wilson','I10', 80, '2024-02-01', 1);

-- Insert sample business rules
INSERT INTO eligibility_rules VALUES
(1, 'I10', 65, 75, 1);
