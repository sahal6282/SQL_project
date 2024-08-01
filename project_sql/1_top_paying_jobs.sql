/*
This query is used to identify top paying Data Analyst jobs that are in remote.
Also used to order them in their salary per year
You can adjust query for finding top paying jobs in other places also
And we can identify lowest paying job also
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short='Data Analyst' AND
    job_location='Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC


limit 10
