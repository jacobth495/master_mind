class Player
  def initialize(name)
    @name = name
  end

  def get_guess
    3.times do
      guesses = gets.chomp.to_i
    end
  end
end