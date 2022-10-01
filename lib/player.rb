class Player
  def initialize(name)
    @name = name
  end

  def get_guess
    $guesses = []
    3.times do
      $guesses.push(gets.chomp.to_i)
    end
  end

  def show_guesses
    p $guesses
  end
end