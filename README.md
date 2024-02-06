
# SQL Query
```sql
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

```

## Overview

This SQL query retrieves information about people and their assignments from the `per_all_people_f` and `per_all_assignments_f` tables. It selects specific fields related to a person's ID, employee number, full name, job ID, and position ID.

## Usage

To use this SQL query:

1. Ensure you have access to the `per_all_people_f` and `per_all_assignments_f` tables in your database.
2. Copy the provided SQL query.
3. Paste the query into your preferred SQL editor or database management tool.
4. Execute the query to retrieve the desired information.

## Query Explanation

- The `SELECT` statement specifies the columns to retrieve from the tables.
- The `FROM` clause indicates the tables from which the data is being queried.
- The `WHERE` clause applies conditions to filter the results:
  - It joins the `per_all_people_f` and `per_all_assignments_f` tables based on the person ID.
  - It restricts the query to records that are effective as of the current date (`sysdate`).
  
## Important Notes

- Ensure that the effective start and end dates in both tables are appropriately maintained to reflect the current status of people and their assignments.
- Customize the query as needed to include additional fields or apply specific filtering criteria.

## Example Output

The output of this query will include columns for `person_id`, `employee_number`, `full_name`, `job_id`, and `position_id` for each person and their corresponding assignment details.

## Disclaimer

This query is provided as a template and may require adjustments to suit your specific database schema and requirements. Always review and test queries in a non-production environment before executing them in a live environment.

---

Feel free to customize this README template further to include any additional details or instructions specific to your use case. 
