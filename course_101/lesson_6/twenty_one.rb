SUITS = ['hearts', 'diamonds', 'clubs', 'spades']
CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']

MIN_BET_SIZE = 1
MAX_BET_SIZE = 20

PAYOUT_21 = 1.5
PAYOUT_OTHER = 1

def initialize_deck
  SUITS.product(CARDS)
end

def shuffle_cards(deck)
  deck.shuffle
end

def place_bet
  bet = 0
  puts "Please place your bet - must be greater than $#{MIN_BET_SIZE}."
  loop do
    bet = gets.chomp.to_f
    break if bet >= MIN_BET_SIZE
    puts "Invalid bet size. Bet must be greater than $#{MIN_BET_SIZE}"
  end
  bet
end

def deal_card(deck)
  deck.shift
end

def display_hand(hand)
  hand
end

def calculate_total(hand)
  total = 0
  ace_count = 0
  hand.each do |card|
    case card[1]
    when 'ace'
      ace_count += 1
      total += 11
      if total > 21 && ace_count > 0
        total -= 10
        ace_count -= 1
      end
    when 'jack', 'queen', 'king'
      total += 10
      if total > 21 && ace_count > 0
        total -= 10
        ace_count -= 1
      end
    else
      total += card[1]
      if total > 21 && ace_count > 0
        total -= 10
        ace_count -= 1
      end
    end
  end

  total
end

def bust?(hand)
  calculate_total(hand) > 21 ? true : false
end

def who_wins?(player_hand, dealer_hand, player)
  if bust?(player_hand)
    puts "Dealer wins."
    false
  elsif bust?(dealer_hand) ||
        calculate_total(player_hand) > calculate_total(dealer_hand)
    puts "#{player} wins."
    true
  elsif calculate_total(dealer_hand) > calculate_total(player_hand)
    puts "Dealer wins."
    false
  else
    puts "It's a tie"
    'Tie'
  end
end

def display_winnings(player, winnings)
  if winnings > 0
    puts "#{player} won $#{winnings}."
  else
    puts "#{player} got his money back as it was a tie."
  end
end

def calculate_winnings(player_hand, dealer_hand, bet, player, winnings, kitty)
  if calculate_total(player_hand) == 21 && player_hand.size == 2 &&
     calculate_total(dealer_hand) != 21
    winnings = bet * PAYOUT_21
    kitty = kitty + winnings + bet
  elsif calculate_total(player_hand) == calculate_total(dealer_hand)
    winnings = 0.0
    kitty += bet
  elsif bust?(dealer_hand) ||
        calculate_total(player_hand) > calculate_total(dealer_hand)
    winnings = bet * PAYOUT_OTHER
    kitty = kitty + winnings + bet
  end

  display_winnings(player, winnings)
  kitty
end

def top_up_kitty(kitty)
  puts "The kitty balance is $#{format('%.2f', kitty)}."
  puts "Would you like to top it up (yes or no)?"
  response = gets.chomp.downcase
  if response == 'yes' || response == 'y'
    puts "How much would you like to add?"
    add_to_kitty = gets.chomp.to_f
    if add_to_kitty > 0
      kitty += add_to_kitty
    else
      puts "Invalid number. Please enter number greater thab zero"
    end
  end

  puts "The kitty now has a balance of $#{format('%.2f', kitty)}."
  kitty
end

puts "Welcome to Twenty One"
puts

puts "Please enter your first name - a nick name is fine"
player = gets.chomp.capitalize
puts

puts "Hi #{player}."
puts "How much would you like to add to your kitty?"
puts "Please enter only dollar amounts - no cents"
kitty = gets.chomp.to_f
puts
puts "You have added $#{format('%.2f', kitty)} to your kitty."

deck = shuffle_cards(initialize_deck)

puts "Let's play. Good luck!"
puts

loop do
  player_hand = []
  dealer_hand = []
  bet = 0
  winnings = 0

  if deck.count < 11
    puts "Less than ten cards remain in deck."
    puts "Need to initialize another deck before continuing."
    deck = shuffle_cards(initialize_deck)
  end

  loop do
    bet = place_bet
    if bet > kitty
      puts "A bet of $#{format('%.2f', bet)} is more than balance of kitty."
      puts "Please enter a bet size less than $#{format('%.2f', kitty)}."
    end
    break if bet <= kitty
  end

  kitty -= bet
  puts "#{player} has placed an opening bet of $#{format('%.2f', bet)}."
  puts "The kitty balance is now $#{format('%.2f', kitty)}."
  player_hand << deal_card(deck)
  puts
  puts "#{player}'s hand is #{display_hand(player_hand)}."
  dealer_hand << deal_card(deck)
  puts
  puts "The dealer's hand is #{display_hand(dealer_hand)}."
  player_hand << deal_card(deck)
  puts
  puts "#{player}'s hand is #{display_hand(player_hand)}."
  puts
  dealer_hand << deal_card(deck)
  dealer_total = calculate_total(dealer_hand)
  player_total = calculate_total(player_hand)
  puts "#{player}'s total is #{player_total}."
  puts

  loop do
    puts "#{player}, would you like to stay or hit (enter 'stay' or 'hit')?"
    stay_or_hit = gets.chomp.downcase
    if stay_or_hit == 'hit' || stay_or_hit == 'h'
      player_hand << deal_card(deck)
      puts
      puts "#{player}'s hand is #{display_hand(player_hand)}."
      player_total = calculate_total(player_hand)
      puts "#{player}'s total is now #{player_total}."
    end
    puts "#{player} busted!" if bust?(player_hand)
    break if stay_or_hit == 'stay' || stay_or_hit == 's' ||
             bust?(player_hand)
  end
  puts

  loop do
    break if bust?(player_hand)
    puts "The dealer's hand is #{display_hand(dealer_hand)}."
    puts
    dealer_total = calculate_total(dealer_hand)
    puts "The dealer's total is #{dealer_total}."

    while dealer_total < 17
      dealer_hand << deal_card(deck)
      puts "The dealer's hand is #{display_hand(dealer_hand)}."
      puts
      dealer_total = calculate_total(dealer_hand)
      puts "The dealer's total is #{dealer_total}."
      puts "Dealer busted!" if bust?(dealer_hand)
    end
    break if bust?(dealer_hand) || dealer_total > 16
  end

  winner = who_wins?(player_hand, dealer_hand, player)

  if winner
    kitty = calculate_winnings(player_hand, dealer_hand, bet,
                               player, winnings, kitty)
  elsif winner == 'Tie'
    kitty += bet
  else
    kitty
  end

  kitty = top_up_kitty(kitty)

  puts "Would you like to play another round?"
  puts "Please enter 'yes' or 'no'."
  response = gets.chomp.downcase
  break if response == 'no' || response == 'n'
end

puts "Dont forget to collect your kitty balance of $#{format('%.2f', kitty)}"
puts "See you next time. Goodbye."
