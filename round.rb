class Round
    def initialize player
      @current_player = player
      @num1 = rand(20) + 1
      @num2 = rand(20) + 1
      @answer = @num1 + @num2
    end 
  
    attr_reader :num1, :num2, :answer
  
    def check(answer)
      unless answer.to_i == @answer
        @current_player.lives --
        return "#{current_player.name}, are you kidding me? NOOO! You just lost one life!"
      end
      return "Thats is correct, #{current_player.name}!"
    end

  end 
  