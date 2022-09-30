class Board
  def initialize
    @board = []
    11.times do 
      @board.push(Array.new(3, nil))
    end
    @key = []
    3.times do
      @key.push(rand(1..5))
    end
  end

  def print
    @board.each {|x| p x}
  end

  def show_key
    p @key
  end

  def get_guess
    3.times do
      guesses = gets.chomp.to_i
    end
  end
end

myboard = Board.new

myboard.get_guess

myboard.print