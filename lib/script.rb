require "./lib/board.rb"
require "./lib/player.rb"

myboard = Board.new
me = Player.new("Jacob")


#me.show_guesses
i = 1


until i == 11 do 
  me.get_guess
  if i == 1
    myboard.print
  end
  myboard.check_guesses
  myboard.add_to_board(i - 1)
  myboard.print
  myboard.winner?
  i += 1
  break if myboard.winner? == true
end