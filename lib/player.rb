class Player
  attr_accessor :player

  def initialize(name)
    @name = name
    coder_or_breaker
  end

  def coder_or_breaker
    puts 'Please enter mastermind or codebreaker'
    @player = gets.chomp
    $codebreaker = false
    $mastermind = false
    if player == 'mastermind'
      $mastermind = true
    elsif player == 'codebreaker'
      $codebreaker = true
    else
      $codebreaker = true
    end
  end

  def get_guess
    puts 'Enter a 3 digit number'
    $guesses = gets.chomp
    x = $guesses.split('')
    until x.count <= 3
      puts 'Please enter a 3 digit number'
      $guesses = gets.chomp
      x = $guesses.split('')
    end
    $guesses = x.map {|x| x.to_i}
  end

  def show_guesses
    p $guesses
  end
end