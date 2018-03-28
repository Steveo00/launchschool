require 'pry'
require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

GAMES_TO_WIN = 5

PLAY_FIRST = 'choose' # Options are 'player', 'computer' or 'choose'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  prompt "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"

  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(brd, delimiter=', ', word='or')
  case brd.size
  when 0 then ''
  when 1 then brd.first.to_s
  when 2 then brd.join(" #{word} ")
  else
    brd[-1] = "#{word} #{brd.last}"
    brd.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd), ', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that is not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_win?(brd)
  empty_squares(brd).each do |num|
    brd[num] = COMPUTER_MARKER
    break if detect_winner(brd) == 'Computer'
    brd[num] = INITIAL_MARKER
  end
end

def computer_places_piece!(brd)
  computer_win?(brd)

  empty_squares(brd).each do |num|
    brd[num] = PLAYER_MARKER
    if detect_winner(brd) == 'Player'
      return brd[num] = COMPUTER_MARKER
    else
      brd[num] = INITIAL_MARKER
    end
  end

  if brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    brd[empty_squares(brd).sample] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

prompt "Welcome to Tic Tac Toe."
prompt "The first to #{GAMES_TO_WIN} will be declared the winner."
puts

first = ''

if PLAY_FIRST == 'choose'
  puts "Who would you like to play first to start each game?"
  loop do
    puts "Please choose either 'player' or 'computer':"
    first = gets.chomp.downcase
    break if first == 'player' || first == 'computer'
    puts "Invalid choice."
  end
elsif PLAY_FIRST == 'player'
  first = 'player'
elsif PLAY_FIRST == 'computer'
  first = 'computer'
else
  puts "PLAY_FIRST variable has been incorrectly set"
end

loop do
  player_score = 0
  computer_score = 0

  loop do
    board = initialize_board

    if first == 'player'
      loop do
        display_board(board)
        player_places_piece!(board)
        display_board(board)
        break if someone_won?(board) || board_full?(board)

        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
        system 'clear'
      end
    elsif first == 'computer'
      loop do
        computer_places_piece!(board)
        display_board(board)
        break if someone_won?(board) || board_full?(board)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
        system 'clear'
      end
    end

    if someone_won?(board)
      player_score += 1 if detect_winner(board) == 'Player'
      computer_score += 1 if detect_winner(board) == 'Computer'

      prompt "#{detect_winner(board)} won!"
      puts
      prompt "You are on #{player_score}."
      prompt "The computer is on #{computer_score}."
    else
      prompt "It's a tie!"
      puts
      prompt "You remain on #{player_score}."
      prompt "The computer remains on #{computer_score}."
    end

    break if player_score == GAMES_TO_WIN || computer_score == GAMES_TO_WIN
  end

  if player_score == GAMES_TO_WIN
    prompt "Woo hoo! you are winner."
  else
    prompt "Bugger. The computer got lucky!"
  end

  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Goodbye!"
