class Player
  def initialize(name)
    @name = name
  end

  def get_guess
    puts 'Enter a 3 digit number'
    $guesses = gets.chomp
    x = $guesses.split('')
    until x.count <= 3
      puts 'Please enter a 3 digit number'
      $guesses = gets.chomp
      $guesses.split('')
    end
    x = x.map {|x| x.to_i}
    $guesses = x
  end

  def show_guesses
    p $guesses
  end
end