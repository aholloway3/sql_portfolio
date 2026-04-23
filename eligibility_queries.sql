-- Purpose: Identify patients meeting hypertension program criteria
-- Business rule: I10 diagnosis, age 65-75, active, admission within 3 months
-- Output: List of eligible patients for outreach

-- Find eligible patients
SELECT
p.patient_id,
p.patient_name,
p.diagnosis_code,
p.age,
p.last_admission_date
FROM patients p
INNER JOIN eligibility_rules r ON p.diagnosis_code = r.diagnosis_code
WHERE p.age BETWEEN r.min_age AND r.max_age
	AND (r.requires_recent_admission = 0 OR
	(r. requires_recent_admission = 1 AND 
	p.last_admission_date >= date('now', '-3months')))
	AND p.is_active =1;
	
