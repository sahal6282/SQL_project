SELECT
    COUNT(job_id) AS job_posted_count,
    EXTRACT(MONTH from job_posted_date)as MONTH
from
    job_postings_fact
WHERE 
   job_title_short='Data Analyst'

GROUP BY MONTH
ORDER BY
    job_posted_count

 LIMIT 12;