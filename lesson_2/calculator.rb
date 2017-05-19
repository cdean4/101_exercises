# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

# NOTES
# 1 - always leave one blank line once code is done
# 2 - remove any extra space at the end of a line of code
# 3 - Use this as a template to remember the format for RUBY
# 4 - leave a space after the # sign when you write a comment

def prompt(message)
  Kernel.puts(`=> #{message}`)
end

prompt(`Welcome to Calculator!`)

loop do
  prompt(`What's the first number?`)
  number1 = Kernel.gets.chomp
end

prompt(`What's the second number?`)
number2 = Kernel.gets.chomp

prompt(`What operation would you like to perform? 1) + 2) - 3) x 4) /`)
operator = Kernel.gets.chomp

result = case operator
        when '1'
          number1.to_i + number2.to_i
        when '2'
          number1.to_i - number2.to_i
        when '3'
          number1.to_i * number2.to_i
        when '4'
          number1.to_f / number2.to_f
end

prompt(`The result is #{result}`)
