# Modify the method from the previous exercise so it ignores non-alphabetic 
# characters when determining whether it should uppercase or lowercase each 
# letter. The non-alphabetic characters should still be included in the 
# return value; they just don't count when toggling the desired case.

def staggered_case(string)
  counter = 0
  new_string = ''

  string.chars.each do |ch|
    if counter.even?
      new_string += ch.upcase
    else
      new_string += ch.downcase
    end

    counter +=1 if ch =~ /[A-Za-z]/
  end

  new_string
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
