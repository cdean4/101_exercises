,# The code below multiplies each element in the collection by 2. Can you 
# implement a double_numbers! method that mutates its argument?

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2

    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers!(my_numbers) 

# Try coding a solution that doubles the numbers that have odd indices.

# original code
def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

# Write a code with idices doubled.
def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

# Try coding a method that allows you to multiply every array item by a specified value.
def multiply(numbers,factor)
  counter = 0
  numbers_multiplied =[]
    loop do
    break if counter == numbers.size

    numbers_multiplied << numbers[counter] * factor
    counter += 1
  end
  numbers_multiplied
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3) 