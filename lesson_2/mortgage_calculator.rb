# Take everything you've learned so far and build a mortgage calculator (or
# car payment calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration

# From the above, you'll need to calculate the following two things:
# monthly interest rate
# loan duration in months
# You can use the following formula:

# m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# Finally, don't forget to run your code through Rubocop.

def prompt(message)
  puts("=> #{message}")
end

def valid_loan?(loan_amount)
  loan_amount.to_f > 0
end

def valid_percent?(percent)
  percent.to_f < 1
end

def duration?(time)
  time.to_i > 0
end

prompt("Hi there! Welcome to my mortgage calculator! Please enter your name.")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure you enter a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  loan_amount = ''
  loop do
    prompt("What is your loan amount?")
    loan_amount = gets.chomp

    if valid_loan?(loan_amount)
      break
    else
      prompt("That doesn't look like a valid loan amount. Please try again.")
    end
  end

  percent = ''
  loop do
    prompt("What is your APR? Please enter as a decimal.")
    percent = gets.chomp

    if valid_percent?(percent)
      break
    else
      prompt("Uh oh! That is not a valid percent. Please try again")
    end
  end

  time = ''
  loop do
    prompt("What is the duration of your loan?")
    time = gets.chomp

    if duration?(time)
      break
    else
      prompt("That doesn't look like a valid duration.")
    end
  end

  prompt("Calculating your monthly mortage payment...")

  m = percent.to_f / 12
  t = time.to_f * 12

  payment = loan_amount.to_f * (m / (1 - (1 + m)**(-t)))

  prompt("#{name} your monthly loan payment is $#{payment.round(2)}")

  prompt("Thank you for using the mortgage calculator. Goodbye!")
  break
end
