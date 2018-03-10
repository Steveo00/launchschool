# Write a method that will take a short line of text, and print it within 
# a box.

def print_in_box(str)
  puts "+#{'-' * (str.length + 2)}+"
  puts "|#{' ' * (str.length + 2)}|"
  puts "| #{str} |"
  puts "|#{' ' * (str.length + 2)}|"
  puts "+#{'-' * (str.length + 2)}+"
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +------ --------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+