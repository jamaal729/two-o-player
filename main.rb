# frozen_string_literal: true

require './game'
require './player'

def switch_players(current_player)
  case current_player
  when P1
    P2
  when P2
    P1
  end
end

P1 = Player.new('Player 1')
puts P1.name

P2 = Player.new('Player 2')
puts P2.name

current_player = P1

play = true

while play
  n1 = number_to_add
  n2 = number_to_add

  puts "#{current_player.name}: What does #{n1} plus #{n2} equal?"
  response = gets.chomp.to_i
  if response == n1 + n2
    puts 'correct'
  else
    puts 'wrong'
    current_player.updateLives
  end
  puts " #{current_player.name}: #{current_player.lives} lives"

  if current_player.lives.zero?
    print 'Game over, you lost!'
    play = false
  end

  # current_player = (current_player === P1)? P2 : P1

  current_player = switch_players(current_player)
  # gets.chomp
end

# Players take turns

# puts('Enter your name')
# resonse = gets.chomp
# puts response

puts

# answer =
