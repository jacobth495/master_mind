require "./lib/player.rb"

class Board < Player
  attr_accessor :key, :guess_reply
  @@a = (0..9)
  def initialize
    @board = []
    11.times do 
      @board.push(Array.new(3, nil))
    end
    #test key
    @key = []
    if $codebreaker == true
      3.times do
        @key.push(rand(0..9))
      end
    else
      puts 'Please select a 3 digit number to be the code'
      #@key = gets.chomp
      #@key = @key.split('')
      #@key = @key.map {|x| x.to_i}
      @key = [9,8,7]
    end
  end

  def prints
    @board.each_with_index do |x, i| 
      puts "Round #{i + 1}"
      p x 
    end
  end

  def show_key
    p @key
  end

  
  def get_computer_guess
    $guesses = []
    3.times do
      $guesses.push(rand(@@a))
    end
  end

  def change_guess
    current_board = @board[$i - 1]
    if current_board[0,3].count('x') == 0 && current_board[0,3].count('o') == 0
      current_board = current_board.map do |x|
        if x == ' '
          current_board.delete(x)
        end
        x = x.to_i
      end
      @@a = @@a.to_a - current_board
      a = @@a.min
      b = @@a.max
      @@a = (a..b)
    end
  end

  def check_guesses
    @@guess_reply = []
    $guesses.each_with_index do |x, i| 
      if @key.any?(x) == true
        if $guesses.count(x) > 1 && i > 0
          next
        else
          @@guess_reply[i] = 'o'
        end
      end
    end
    $guesses.each_index do |gi|
      a = $guesses[gi]
      b = @key[gi]
      if a == b
        until @@guess_reply[gi] == 'o'
          gi -= 1
          if gi < 0
            gi = -1
          end
        end
        @@guess_reply[gi] = 'x'
      end
    end
  end

  def add_to_board(index)
    @board[index] =  (@@guess_reply.join + ' ' + $guesses.join).split('')
  end

  def winner?
    if @@guess_reply == ['x', 'x', 'x']
      puts 'Congrats!!! You cracked the code!'
      true
    else
      false
    end
  end

  def back_to_range(arr)
    arr.each_with_index do |v, i|
    
      if arr[i + 1] - arr[i] > 1

  end
end

