class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def updateLives
    self.lives -= 1
  end

  attr_accessor :name, :lives

end

