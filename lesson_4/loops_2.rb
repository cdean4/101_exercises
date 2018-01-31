# LOOPS 2

# Question 1

count = 0

loop do
  count += 1
  if count.even? == true 
    puts "#{count} is even!"
  else puts "#{count} is odd!"
end
break if count > 5
end

# Question 2

loop do
  number = rand(100)
  puts number
  break if number == 0..10
end

# Question 3

process_the_loop = [true, false].sample

loop do
  if process_the_loop == true
    puts 'The loop was processed!'
  else
    puts "The loop wasn't processed!"
  end
  break
end

# Question 4

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
  else
   puts 'Wrong answer. Try again.'
  end
  break if answer == 4
end

# Question 5

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers

# Question 6

#This method doesn't empty names.
names = ['Sally', 'Joe', 'Lisa', 'Henry']
count = 0
storage = []

loop do
  puts names[count]
  count += 1
  storage << names[count]
  break if count == 4
end

# this gets it done with less lines of code.
loop do
	puts names.shift
	break if names == []
end

# Question 7

5.times do |index|
  puts index
  break if index == 2
end

# Quedtion 8

number = 0

until number == 10
  number += 1
  next if number.odd? 
  	puts number
end

# Question 9

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  
  puts '5 was reached!'

  break if number_a == 5 || number_b == 5
end

# Question 10

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings == 2  || number_of_greetings == 1
  number_of_greetings -= 1
  greeting
end