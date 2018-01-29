def roman_year(integer_year)
  
  thousands = integer_year / 1000
  roman = 'M' * thousands
  five_hundreds = integer_year % 1000 / 500
  roman = roman + 'D' * five_hundreds
  hundreds = integer_year % 1000 % 500 / 100
  roman = roman + 'C' * hundreds
  fiftys = integer_year % 1000 % 500 % 100 / 50
  roman = roman + 'L' * fiftys
  tens = integer_year % 1000 % 500 % 100 % 50 / 10
  roman = roman + 'X' * tens
  fives = integer_year % 1000 % 500 % 100 % 50 % 10 / 5
  roman = roman + 'V' * fives
  ones = integer_year % 1000 % 500 % 100 % 50 % 10 % 5
  roman_year = roman + 'I' * ones

end             

puts "Please enter an integer to convert to old school roman numerals"
year = gets.chomp.to_i

puts roman_year(year)