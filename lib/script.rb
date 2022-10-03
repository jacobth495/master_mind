require "./lib/board.rb"
require "./lib/player.rb"

me = Player.new("Jacob")
myboard = Board.new



myboard.show_key
i = 1

if $codebreaker == true
  until i == 11 do 
    puts "Round #{i}"
    me.get_guess
    myboard.check_guesses
    myboard.add_to_board(i - 1)
    myboard.prints
    myboard.winner?
    i += 1
    if myboard.winner? == true
      break
    end
  end
else
  puts "Round #{i}"
  me.get_guess
  myboard.check_guesses
  myboard.add_to_board(i - 1)
end

if myboard.winner? == false
  puts 'Sorry better luck next time!!!'
end