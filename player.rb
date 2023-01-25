class Player
  def initialize name
    @name = name
    @lives = 3
  end 

  attr_accessor :name, :lives

  def win_game
    "#{@name} wins with a score of #{@lives}/3"
  end
end 