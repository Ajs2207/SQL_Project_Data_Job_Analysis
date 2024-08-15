/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE
    job_title_short='Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home=True
GROUP BY
    skills
ORDER BY 
    avg_salary DESC
LIMIT 50


/*
Here's a breakdown of the results for top paying skills for Data Analysts:
- High Demand for Big Data & ML Skills: Top salaries are commanded by analysts skilled in big data technologies (PySpark, Couchbase), machine learning tools (DataRobot, Jupyter), and Python libraries (Pandas, NumPy), reflecting the industry's high valuation of data processing and predictive modeling capabilities.
- Software Development & Deployment Proficiency: Knowledge in development and deployment tools (GitLab, Kubernetes, Airflow) indicates a lucrative crossover between data analysis and engineering, with a premium on skills that facilitate automation and efficient data pipeline management.
- Cloud Computing Expertise: Familiarity with cloud and data engineering tools (Elasticsearch, Databricks, GCP) underscores the growing importance of cloud-based analytics environments, suggesting that cloud proficiency significantly boosts earning potential in data analytics.

[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  },
  {
    "skills": "crystal",
    "avg_salary": "120100"
  },
  {
    "skills": "go",
    "avg_salary": "115320"
  },
  {
    "skills": "confluence",
    "avg_salary": "114210"
  },
  {
    "skills": "db2",
    "avg_salary": "114072"
  },
  {
    "skills": "hadoop",
    "avg_salary": "113193"
  },
  {
    "skills": "snowflake",
    "avg_salary": "112948"
  },
  {
    "skills": "git",
    "avg_salary": "112000"
  },
  {
    "skills": "ibm cloud",
    "avg_salary": "111500"
  },
  {
    "skills": "azure",
    "avg_salary": "111225"
  },
  {
    "skills": "bigquery",
    "avg_salary": "109654"
  },
  {
    "skills": "aws",
    "avg_salary": "108317"
  },
  {
    "skills": "shell",
    "avg_salary": "108200"
  },
  {
    "skills": "unix",
    "avg_salary": "107667"
  },
  {
    "skills": "java",
    "avg_salary": "106906"
  },
  {
    "skills": "ssis",
    "avg_salary": "106683"
  },
  {
    "skills": "jira",
    "avg_salary": "104918"
  },
  {
    "skills": "oracle",
    "avg_salary": "104534"
  },
  {
    "skills": "dax",
    "avg_salary": "104500"
  },
  {
    "skills": "looker",
    "avg_salary": "103795"
  },
  {
    "skills": "sap",
    "avg_salary": "102920"
  },
  {
    "skills": "nosql",
    "avg_salary": "101414"
  },
  {
    "skills": "python",
    "avg_salary": "101397"
  },
  {
    "skills": "r",
    "avg_salary": "100499"
  },
  {
    "skills": "redshift",
    "avg_salary": "99936"
  },
  {
    "skills": "qlik",
    "avg_salary": "99631"
  }
]

*/