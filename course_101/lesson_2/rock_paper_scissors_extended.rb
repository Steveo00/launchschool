VALID_CHOICES = %w(rock paper scissors lizard spock)

SHORT_CHOICES = { VALID_CHOICES[0] => 'r',
                  VALID_CHOICES[1] => 'p',
                  VALID_CHOICES[2] => 'sc',
                  VALID_CHOICES[3] => 'l',
                  VALID_CHOICES[4] => 'sp' }

RULES = { paper: %w(rock spock),
          scissors: %w(paper lizard),
          rock: %w(lizard scissors),
          lizard: %w(spock paper),
          spock: %w(scissors rock) }

WINNING_SCORE = 5

def prompt(message)
  puts("=> #{message}")
end

def convert_choice(user_choice)
  case user_choice
  when 'r'  then 'rock'
  when 'p'  then 'paper'
  when 'sc' then 'scissors'
  when 'l'  then 'lizard'
  when 'sp' then 'spock'
  end
end

def win?(first, second)
  first == 'rock' && RULES[first.to_sym].include?(second) ||
    first == 'paper' && RULES[first.to_sym].include?(second) ||
    first == 'scissors' && RULES[first.to_sym].include?(second) ||
    first == 'lizard' && RULES[first.to_sym].include?(second) ||
    first == 'spock' && RULES[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("User wins this round!")
  elsif win?(computer, player)
    prompt("Computer wins this round!")
  else
    prompt("It's a tie")
  end
end

loop do
  player_score = 0
  computer_score = 0

  while player_score < WINNING_SCORE && computer_score < WINNING_SCORE
    choice = ''

    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      prompt("You can also choose: ")
      prompt("    #{SHORT_CHOICES[VALID_CHOICES[0]]} for #{VALID_CHOICES[0]}")
      prompt("    #{SHORT_CHOICES[VALID_CHOICES[1]]} for #{VALID_CHOICES[1]}")
      prompt("    #{SHORT_CHOICES[VALID_CHOICES[2]]} for #{VALID_CHOICES[2]}")
      prompt("    #{SHORT_CHOICES[VALID_CHOICES[3]]} for #{VALID_CHOICES[3]}")
      prompt("    #{SHORT_CHOICES[VALID_CHOICES[4]]} for #{VALID_CHOICES[4]}")
      choice = gets.chomp

      if VALID_CHOICES.include?(choice) || SHORT_CHOICES.value?(choice)
        break
      else
        prompt("That's not a valid choice")
      end
    end

    choice = convert_choice(choice) if SHORT_CHOICES.value?(choice)

    computer_choice = VALID_CHOICES.sample

    puts("You chose: #{choice}. Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    if player_score == WINNING_SCORE
      puts "User is first to 5. Winners are grinners"
    elsif computer_score == WINNING_SCORE
      puts "Computer is first to 5. Nobody beats the computer. Haha"
    end
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.start_with?('y')
end

prompt("Thank you for playing. Goodbye")
