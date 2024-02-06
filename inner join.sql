SELECT
    pp.person_id,
    pp.employee_number,
    pp.full_name,
    pdf.job_id,
    pdf.position_id
FROM
    per_all_people_f pp,
    per_all_assignments_f pdf
WHERE
    pp.person_id = pdf.person_id
    AND sysdate BETWEEN pp.effective_start_date AND pp.effective_end_date
    AND sysdate BETWEEN pdf.effective_start_date AND pdf.effective_end_date;
