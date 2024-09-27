SELECT admission, COUNT(*)
FROM mba_admission
GROUP BY admission;

SELECT gender, COUNT(*)
FROM mba_admission
WHERE admission = 'Admit'
GROUP BY gender;

SELECT international, COUNT(*)
FROM mba_admission
WHERE admission = 'Admit'
GROUP BY international;
SELECT international, COUNT(*)
FROM mba_admission
WHERE admission = 'Waitlist'
GROUP BY international;
SELECT international, COUNT(*)
FROM mba_admission
WHERE admission = 'Deny'
GROUP BY international;

SELECT major, COUNT(*)
FROM mba_admission
WHERE admission = 'Admit'
GROUP BY major;
SELECT major, COUNT(*)
FROM mba_admission
WHERE admission = 'Waitlist'
GROUP BY major;
SELECT major, COUNT(*)
FROM mba_admission
WHERE admission = 'Deny'
GROUP BY major;