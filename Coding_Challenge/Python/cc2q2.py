# Importing the Pandas library
import pandas as pd

# Creating a sample DataFrame
data = {
    'Name': ['Alice', 'Bob', 'Charlie', 'David', 'Emma'],
    'Age': [25, 30, 22, 35, 28],
    'Salary': [50000, 60000, 45000, 70000, 55000]
}

df = pd.DataFrame(data)

# Using the query method to filter data
filtered_df = df.query('Age > 25 and Salary > 50000')

# Displaying the filtered DataFrame
print(filtered_df,"\n")

# Filter data where Age is between 25 and 35 and Salary is greater than 50000
filtered_df = df.query('25 <= Age <= 35 and Salary > 50000')

# Displaying the filtered DataFrame
print(filtered_df,"\n")

# Define a variable and use it in the query
target_age = 30
filtered_df = df.query(f'Age == {target_age}')

# Displaying the filtered DataFrame
print(filtered_df,"\n")
