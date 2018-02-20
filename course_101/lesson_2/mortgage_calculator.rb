# Get loan amount, loan duration and annual interest rate from user
# Validate each input for validity ie all inputs greater than zero.
# Convert annual interest rate to monthly rate
# Convert loan duration to months
# Use this formula to calculate the monthly repayment -
#        m = p * (j / (1 - (1 + j)**(-n)))
# Ask user if they wish to perform another calculation

MINIMUM_LOAN_AMOUNT = 1000
MINIMUM_LOAN_DURATION = 5
MINIMUM_ANNUAL_INTEREST_RATE = 0

def valid_number?(num)
  /(\d+(\.\d+)?)/.match(num)
end

def valid_integer_number?(num)
  /^\d+$/.match(num)
end

puts "Welcome to the Mortgage Calculator"
puts

first_name = ''

while first_name.empty?
  puts "What is your first name =>"
  first_name = gets.chomp
end

puts "Hi #{first_name}"

calculate_again = 'y'

while calculate_again == 'y'

  loan_amount_float = nil

  loop do
    puts "How much do you wish to borrow?"
    puts "The amount must be at least $#{MINIMUM_LOAN_AMOUNT} =>"

    loan_amount = gets.chomp
    loan_amount_float = loan_amount.to_f

    if valid_number?(loan_amount)
      if loan_amount_float >= MINIMUM_LOAN_AMOUNT
        break
      else
        puts "Loan amount needs to be at least $#{MINIMUM_LOAN_AMOUNT}"
      end
    else
      puts "Please enter a valid number =>"
    end
  end

  loan_duration_years_integer = nil

  loop do
    puts "How long do you wish to borrow the money for?"
    puts "Please enter only full years only =>"

    loan_duration_years = gets.chomp
    loan_duration_years_integer = loan_duration_years.to_i

    if valid_integer_number?(loan_duration_years)
      if loan_duration_years_integer >= MINIMUM_LOAN_DURATION
        break
      else
        puts "Loan duration needs to be at least #{MINIMUM_LOAN_DURATION} years"
      end
    else
      puts "Please enter a valid number =>"
    end
  end

  annual_interest_rate_float = nil

  loop do
    puts "Please enter the annual interest rate."
    puts "Enter 2% as 2 and 2.5% as 2.5 =>"

    annual_interest_rate = gets.chomp
    annual_interest_rate_float = annual_interest_rate.to_f

    if valid_number?(annual_interest_rate)
      if annual_interest_rate_float >= MINIMUM_ANNUAL_INTEREST_RATE
        break
      else
        puts "The annual interest rate needs to be greater than /
              #{MINIMUM_ANNUAL_INTEREST_RATE}%"
      end
    else
      puts "Please enter a valid number =>"
    end
  end

  monthly_interest_rate = annual_interest_rate_float / 100 / 12
  loan_duration_months = loan_duration_years_integer * 12

  monthly_repayment = loan_amount_float *
                      (monthly_interest_rate /
                      (1 - (1 + monthly_interest_rate)**-loan_duration_months))

  puts "The monthly repayment is $#{format('%02.2f', monthly_repayment)}"

  puts "Do you wish to perform another calculation (y/n) =>"

  calculate_again = gets.chomp.downcase

  if calculate_again != 'y'
    puts "Thanks for using the Mortgage Calculator. Goodbye #{first_name}"
  else
    system("clear")
  end
end
