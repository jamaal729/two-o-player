# frozen_string_literal: true

require './player'
require './prompter'

class Game
  P1 = Player.new('Player 1')
  P2 = Player.new('Player 2')

  def play
    current_player = P1
    play = true
    while play

      Prompter.prompt(current_player)
      curr = current_player
      other = switch_players(current_player)
      puts "#{curr.name}: #{curr.lives}/3 vs #{other.name}: #{other.lives}/3"

      if current_player.lives.zero?
        current_player = switch_players(current_player)
        puts "#{current_player.name} wins with a score of #{current_player.lives}/3  "
        puts '----- GAME OVER -----'
        puts 'Good Bye!'
        play = false
      else
        current_player = switch_players(current_player)
        puts
        puts '----- NEW TURN -----'
      end
    end
  end

  def switch_players(current_player)
    current_player == P1 ? P2 : P1
  end
end
