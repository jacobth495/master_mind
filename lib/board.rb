class Board
  def initialize
    @board = []
    11.times do 
      @board.push(Array.new(3, nil))
    end
    @key = []
    4.times do
      @key.push(rand(1..5))
    end
  end

  def print
    @board.each {|x| p x}
  end

  def show_key
    p @key
  end
end