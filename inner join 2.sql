--select person_id,full_name,start_date,employee_number,marital_status from PER_ALL_PEOPLE_F
--where employee_number= '132' and full_name like 'John%';

--SELECT
--    pp.person_id,
--    pp.employee_number,
--    pp.full_name,
--    pdf.job_id,
--    pdf.position_id
--FROM
--    per_all_people_f pp,
--    per_all_assignments_f pdf
--WHERE
--    pp.person_id = pdf.person_id
--    AND sysdate BETWEEN pp.effective_start_date AND pp.effective_end_date
--    AND sysdate BETWEEN pdf.effective_start_date AND pdf.effective_end_date;


SELECT
    pp.person_id,
    pp.employee_number,
    pp.full_name,
    pdf.job_id,
    pdf.position_id
FROM
    per_all_people_f pp
inner JOIN
    per_all_assignments_f pdf on pp.person_id = pdf.person_id
WHERE
    sysdate BETWEEN pp.effective_start_date AND pp.effective_end_date
    AND sysdate BETWEEN pdf.effective_start_date AND pdf.effective_end_date;
    
    

