-- Solution 1: --

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE REGEXP_LIKE(conditions, '(^| )DIAB1\\w*( |$)');

-- Solution 2: --

SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'        -- begins with DIAB1
   OR conditions LIKE '% DIAB1%'      -- in the middle
   OR conditions LIKE '% DIAB1';      -- at the end

