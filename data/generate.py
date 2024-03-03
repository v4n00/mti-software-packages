import numpy as np
import pandas as pd

employee_ids = np.arange(1, 51)
employee_names = [
    "James Smith",
    "Maria Garcia",
    "Jianyu Chen",
    "Fatima Zahra",
    "John Doe",
    "Emily Davis",
    "Raj Patel",
    "Olivia Jones",
    "Amelia Brown",
    "Liam Wilson",
    "Sophia Martin",
    "Ava Taylor",
    "Isabella Anderson",
    "Mia Thomas",
    "Charlotte Rodriguez",
    "Ethan Lee",
    "Lucas Walker",
    "Harper Hernandez",
    "Ella Wright",
    "Aiden King",
    "Noah Moore",
    "Logan Bailey",
    "Benjamin Clark",
    "Mason Carter",
    "Elijah Morris",
    "Oliver Stewart",
    "Jacob Hall",
    "Michael Young",
    "Alexander Hernandez",
    "William King",
    "Ethan Wright",
    "Mateo Lopez",
    "Ryan Gonzalez",
    "Daniel Johnson",
    "Henry Martinez",
    "Joseph Rivera",
    "Lucas Robinson",
    "David Walker",
    "Sebastian Anderson",
    "Jack White",
    "Julian Jackson",
    "Liam Thompson",
    "Owen Lee",
    "Wyatt Harris",
    "Gabriel Clark",
    "Carter Lewis",
    "Jayden Robinson",
    "John Wilson",
    "Luke Martinez",
    "Chase Allen",
]

salaries = np.random.randint(2_400, 10_000, size=50)
projects_done = np.random.randint(1, 10, size=50)
project_ids_employee = np.random.randint(1, 11, size=50)
bonus = np.random.randint(0, 5, size=50)

employees_df_final = pd.DataFrame(
    {
        "EmployeeID": employee_ids,
        "Name": employee_names,
        "Salary": salaries,
        "ProjectsDone": projects_done,
        "AssignedProjectID": project_ids_employee,
        "Bonus": bonus,
    }
)
employees_df_final.loc[[5, 32, 47, 21, 14], "ProjectsDone"] = np.nan

project_ids = np.arange(1, 11)
project_titles = [
    "Market Analysis",
    "Internal Audit",
    "Tax Strategy",
    "Tax Strategy",
    "Financial Planning",
    "Operational Improvement",
    "Operational Improvement",
    "Operational Improvement",
    "Technology Implementation",
    "Data Analytics",
]
start_dates = pd.date_range(start="2021-01-01", periods=10, freq="MS")
end_dates = start_dates + pd.to_timedelta(np.random.randint(60, 180, size=10), unit="d")
budgets_projects = np.random.randint(10_000, 100_000, size=10)

projects_df_final = pd.DataFrame(
    {
        "ProjectID": project_ids,
        "Title": project_titles,
        "StartDate": start_dates,
        "EndDate": end_dates,
        "Budget": budgets_projects,
    }
)

department_names = ["Audit", "Consulting", "Tax", "Advisory", "Corporate Finance"]
ratings = np.random.uniform(3.5, 5.0, size=5).round(1)
budgets_departments = np.random.randint(200_000, 300_000, size=5)
best_employee_ids = np.random.choice(employee_ids, size=5, replace=False)

departments_df_final = pd.DataFrame(
    {
        "DepartmentName": department_names,
        "Rating": ratings,
        "Budget": budgets_departments,
        "BestEmployeeID": best_employee_ids,
    }
)

employees_df_final.to_csv("./data/employees.csv", index=False)
projects_df_final.to_csv("./data/projects.csv", index=False)
departments_df_final.to_csv("./data/departments.csv", index=False)
