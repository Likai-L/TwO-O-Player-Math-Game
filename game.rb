class Game
  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end 


  def start
    puts "📣📣   NEW GAME   📣📣"
    i = 1
    until (@player1.lives == 0 || @player2.lives == 0) do
      
      round = Round.new(i.odd? ? @player1 : @player2)

      puts round.prompt
      answer = gets.chomp
      round.check(answer)
      puts "#{@player1.lives}/3 vs #{@player2.lives}/3"
      if @player1.lives == 0 
       @player2.win
        break
      end 
      if @player2.lives == 0 
        @player1.win
        break
      end 
      i += 1
    end 

    
  end

end 