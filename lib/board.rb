require "./lib/player.rb"

class Board < Player
  attr_accessor :guesses, :key, :guess_reply
  def initialize
    @board = []
    11.times do 
      @board.push(Array.new(3, nil))
    end
    @key = [2,1,3]
    #3.times do
      #@key.push(rand(1..5))
    #end
  end

  def print
    @board.each {|x| p x}
  end

  def show_key
    p @key
  end
  #fix to handle repeats in key
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
        if @@guess_reply[gi] == nil
          @@guess_reply[gi - 1] = 'x'
        else
          @@guess_reply[gi] = 'x'
        end
      end
    end
    puts @@guess_reply.join
  end

  def add_to_board(index)
    @board[index] = @@guess_reply.join + "/ /" +$guesses.join
  end
end