/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/

SELECT 
    j.job_id,
    j.job_title_short,
    j.salary_year_avg,
    j.job_location,
    j.job_schedule_type,
    c.name AS Company_name
FROM
    job_postings_fact j
LEFT JOIN company_dim c ON j.company_id = c.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND 
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;




/*
Here's the breakdown of the top data analyst jobs in 2023:
Wide Salary Range: Top 10 paying data analyst roles span from $184,000 to $650,000, indicating significant salary potential in the field.
Diverse Employers: Companies like SmartAsset, Meta, and AT&T are among those offering high salaries, showing a broad interest across different industries.
Job Title Variety: There's a high diversity in job titles, from Data Analyst to Director of Analytics, reflecting varied roles and specializations within data analytics.

RESULTS
=======

[
  {
    "job_id": 226942,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "650000.0",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Mantys"
  },
  {
    "job_id": 547382,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "336500.0",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Meta"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "255829.5",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "AT&T"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "232423.0",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Pinterest Job Advertisements"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "217000.0",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Uclahealthcareers"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "205000.0",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "SmartAsset"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "189309.0",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Inclusively"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "189000.0",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Motional"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "186000.0",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "SmartAsset"
  },
  {
    "job_id": 387860,
    "job_title_short": "Data Analyst",
    "salary_year_avg": "184000.0",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "company_name": "Get It Recruit - Information Technology"
  }
]
*/