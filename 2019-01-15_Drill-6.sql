USE db_zoo;
/* Drill 6, p. 72 */
SELECT specialist_fname, specialist_lname, specialist_contact 
FROM ((tbl_specialist 
INNER JOIN tbl_care ON care_specialist = tbl_specialist.specialist_id) 
INNER JOIN tbl_species ON species_care = 'care_6');
