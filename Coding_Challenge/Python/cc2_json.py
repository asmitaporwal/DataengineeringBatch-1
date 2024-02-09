import json

# JSON string
json_string = '{"name": "John", "age": 30, "city": "New York"}'

# Convert JSON string to Python dictionary
data_dict = json.loads(json_string)

# Display the resulting dictionary
print("dictionary",data_dict,"\n")
print("Name ",data_dict['name'])




# JSON array string
json_array_string = '[{"name": "Alice", "age": 25}, {"name": "Bob", "age": 30}]'

# Convert JSON array string to Python list
data_list = json.loads(json_array_string)

# Display the resulting list
print("List ",data_list,"\n")
#list first index value
print(data_list[0])

