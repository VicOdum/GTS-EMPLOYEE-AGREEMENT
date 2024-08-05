# GTS-EMPLOYEE-AGREEMENT
## About the Data
The GTS Employee Agreement Dataset is a synthetic dataset designed to explore various data analysis and machine learning techniques in employee agreement management. It closely resembles real employee data, sourced partly from the internet and partly generated fictionally for specific data science assignments.
Column Descriptions:
* Employee ID: Unique identifier for each employee.
* First Name: Employee's first name.
* Last Name: Employee's last name.
* Name: Employee's full name (combination of First Name and Last Name).
* Position: Official position of the employee in the company.
* Department: Official department in the company where the employee works.
* Agreement Date: Date when the employee started working for the organization.
* Exit Date: Date when the employee left the organization (where applicable).
* Contract Term (in months): Duration of the employee's contract.
* Current Employee Rating: Employee's current performance rating.
* Basic Salary: Base salary of the employee, excluding bonuses and benefits.
* Bonus: Additional salary based on overtime and outstanding performance.
* Benefits: Additional salary from allowances (e.g., leave, health management, travel).
* Cloud Service used: Cloud service provider (e.g., AWS, GCP, Azure) used by the employee.
* Database Software used: Software used by the employee for database functions.
* Statistic Software Required: Software used by the employee for statistical analysis.
* Programming Language: Programming language used by the employee for official duties.
* Tools used: Combination of database software, statistic software, and programming language used by the employee.
## Summary of Findings and Explanation of Cloud Service Integration
The primary objective of the analysis was to conduct thorough data wrangling, exploratory data analysis (EDA), visualize key variables, and derive insights.
Initially, the dataset had dimensions of (3000, 18). After comprehensive data wrangling, we reduced it to (238, 11) for analysis. This involved dropping empty rows and unnecessary columns, and standardizing data formats and types. Data cleaning processes utilized spreadsheets, Python, and SQL.
## Insights from analysis:
* Contract Terms: Contracts ranged from less than a month to 58 months.
* Base Salary: Maximum base salary was $78,099.4; minimum was $0, indicating unpaid employees.
* Departments: Production had the highest staffing levels.
To analyze cloud software and tools, the dataset was modified to separate these components. SQL was the most used tool, followed by Python and R. Potential employees are advised to be proficient in these tools for optimal performance and communication.
Cloud software analysis revealed five providers: AWS, Azure, GCP, NoSQL, and MapReduce, each with varying usage among employees.
Post-Jupyter data wrangling, a clean dataset named "New Employee Data" was saved and imported into SQL for further analysis, including standardizing data types and examining total salary and benefit expenditures. SQL analysis included average basic salary by department and position.
Insights were visualized using Tableau.
## Constraints
Constraints included a lot of missing data impacting results.
## Conclusion
The company should prioritize departments like Executive, which showed lower earnings without bonuses. Streamlining software tools can improve communication and efficiency among staff using cloud services and tools.
