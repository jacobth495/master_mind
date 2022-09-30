require "./lib/board.rb"
require "./lib/player.rb"

myboard = Board.new
me = Player.new("Jacob")

me.get_guess
myboard.print
me.show_guesses