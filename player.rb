class Player
  def initialize name
    @name = name
    @lives = 3
  end 

  attr_accessor :name, :lives

  def win
    puts "💜💜   GAME OVER   💜💜"
    puts "🎉🎉  #{@name} wins the game with a score of #{@lives}/3  🎉🎉"
  end
end 