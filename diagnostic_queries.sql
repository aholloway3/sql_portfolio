-- "Why are my volumes low?" - Check diagnosis code distribution
SELECT diagnosis_code, COUNT(*) as patient_count
FROM patients
WHERE is_active = 1
GROUP BY diagnosis_code;

-- "Is my data complete?" - Data quality check 
SELECT COUNT(*) as total_patients,
		COUNT(last_admission_date) as patients_with_admission_data,
		COUNT(*) - COUNT(last_admission_date) as missing_admission_dates
FROM patients;

-- "Let me test the rules individually" - Break down of the logic
SELECT patient_id, diagnosis_code, age,
	(age BETWEEN 65 AND 75) as meets_age_criteria,
	(last_admission_date >= date('now', '-3 months')) as
has_recent_admission
FROM patients
WHERE diagnosis_code = 'I10';

-- See all business rules
SELECT * FROM eligibility_rules;

-- See all patient data 
SELECT * FROM patients;

-- Find patients who almost qualify (for analysis)
SELECT * FROM patients 
WHERE diagnosis_code = 'I10'
	AND age BETWEEn 60 and 80
	AND is_active = 1;
	
