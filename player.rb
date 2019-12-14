# frozen_string_literal: true

class Player
  def initialize(name)
    @name = name
    @lives = 3
  end

  def update_lives
    self.lives -= 1
  end

  attr_accessor :name, :lives
end
