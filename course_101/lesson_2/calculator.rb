# ask the user for two numbers
# ask the user for the operation to perform on the two numbers
# perfrom the operation
# output the result of the operation

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end

prompt("Welcome to the Calculator! Enter your name")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ''

  loop do
    prompt("Please enter your first number:")
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt("Hmm.... this dosen't look like a valid number")
    end
  end

  number2 = ''

  loop do
    prompt("Please enter your second number:")
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt("Hmm.... this dosen't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) to add
    2) to subtract
    3) to multiply
    4) to divide
  MSG

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             if float?(number1) || float?(number2)
              number1.to_f + number2.to_f
             else
              number1.to_i + number2.to_i
             end
           when '2'
             if float?(number1) || float?(number2)
              number1.to_f - number2.to_f
             else
              number1.to_i - number2.to_i
             end
           when '3'
             if float?(number1) || float?(number2)
              number1.to_f * number2.to_f
             else
              number1.to_i * number2.to_i
             end
           when '4'
             if float?(number1) || float?(number2)
              number1.to_f / number2.to_f
             else
              number1.to_i / number2.to_i
             end
           end

  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation. Y to calculate again.")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Goodbye")
