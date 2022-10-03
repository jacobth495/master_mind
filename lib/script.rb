require "./lib/board.rb"
require "./lib/player.rb"

me = Player.new("Jacob")
myboard = Board.new
$i = 1


myboard.show_key


if $codebreaker == true
  until $i == 12 do 
    puts "Round #{$i}"
    me.get_guess
    myboard.check_guesses
    myboard.add_to_board($i - 1)
    myboard.prints
    myboard.winner?
    $i += 1
    if myboard.winner? == true
      break
    end
  end
else
  until $i == 12 do 
    myboard.get_computer_guess
    myboard.check_guesses
    myboard.add_to_board($i - 1)
    myboard.prints
    myboard.change_guess
    $i += 1
    if myboard.winner? == true
      break
    end
  end
end

if myboard.winner? == false
  if $codebreaker == true
    puts 'Sorry better luck next time!!!'
  else
    puts 'Congrats you beat the computer!!!'
  end
end