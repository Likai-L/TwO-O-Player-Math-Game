class Round
    def initialize player
      @current_player = player
      @num1 = rand(20) + 1
      @num2 = rand(20) + 1
      @answer = @num1 + @num2
    end 
  
    attr_reader :num1, :num2, :answer
  
    def check(answer)
      return true if answer.to_i == @answer
      false
    end

  end 

 
  