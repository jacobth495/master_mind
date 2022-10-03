require "./lib/board.rb"
require "./lib/player.rb"

myboard = Board.new
me = Player.new("Jacob")


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
    break if myboard.winner? == true
  end
elsif $mastermind == true

end

if myboard.winner? == false
  puts 'Sorry better luck next time!!!'
end