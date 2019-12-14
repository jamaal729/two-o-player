# frozen_string_literal: true

class Prompter
  def self.number_to_add
    rand(1...20)
  end

  def self.prompt(player)
    n1 = number_to_add
    n2 = number_to_add

    puts "#{player.name}: What does #{n1} plus #{n2} equal?"
    response = gets.chomp.to_i
    if response == n1 + n2
      puts "#{player.name}: YES! You are correct."
    else
      puts 'Seriously? No!'
      player.update_lives
    end
  end
end
