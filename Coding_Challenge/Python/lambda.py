from functools import reduce
#lambda map
numbers = [1, 2, 3, 4, 5]
squared_numbers = list(map(lambda x: x ** 2, numbers))
print("squared_numbers",squared_numbers)  


numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# Using filter() with lambda to get even numbers
even_numbers = list(filter(lambda x: x % 2 == 0, numbers))
print("even_numbers",even_numbers)  

# Using filter() with lambda to get odd numbers
odd_numbers = list(filter(lambda x: x % 2 != 0, numbers))
print("odd_numbers",odd_numbers)  

#using reduce() with lambda
numbers = [1, 2, 3, 4, 5]
product = reduce(lambda x, y: x * y, numbers)
print(product)  

