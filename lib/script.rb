require "./lib/board.rb"
require "./lib/player.rb"

myboard = Board.new
me = Player.new("Jacob")

me.get_guess
myboard.print
#me.show_guesses
myboard.check_guesses
myboard.add_to_board(0)
myboard.print
myboard.winner?