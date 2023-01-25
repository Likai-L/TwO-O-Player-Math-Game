require "./game";
require "./round";
require "./player";
lana = Player.new("Lana Del Rey")
taylor = Player.new("Taylor Swift")
game = Game.new(lana, taylor)
game.start