class Round
    def initialize player
      @current_player = player
      @num1 = rand(20) + 1
      @num2 = rand(20) + 1
      @answer = @num1 + @num2
      @prompt = "#{player.name}, what does #{num1} plus #{num2} equal?"
    end 
  
    attr_reader :num1, :num2, :answer, :prompt

  
    def check(answer)
      unless answer.to_i == @answer
        @current_player.lives -= 1
        puts "❌❌ Nah, #{@current_player.name}, that's wrong. You just lost one life! ❌❌"
        return
      end
      puts "✅✅ Thats is correct, #{@current_player.name}! ✅✅"
    end

  end 
  