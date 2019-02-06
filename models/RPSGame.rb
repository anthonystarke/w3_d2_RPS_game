require 'pry'

class RPSGame

  attr_reader :first_option, :second_option

  def initialize(first_option,second_option = "Empty")

    @first_option = first_option.to_s.downcase
    @second_option = second_option.to_s.downcase

  end

  def decide_winner()

    return "It's a Draw" if @first_option == @second_option
    return "Player 2 - Paper Won" if @first_option == "rock" && @second_option == "paper"
    return "Player 1 - Rock Won" if @first_option == "rock" && @second_option == "scissors"
    return "Player 1 - Paper Won" if @first_option == "paper" && @second_option == 'rock'
    return "Player 2 - Scissors Won" if @first_option == "paper" && @second_option == 'scissors'
    return "Player 2 - Rock Won" if @first_option == "scissors" && @second_option == 'rock'
    return "player 1 - Scissors Won"if @first_option == "scissors" && @second_option == 'paper'

  end

  def play_bot()

    bot_choice = rand(1...4)
    # binding.pry
    case bot_choice
    when 1
      @second_option = "rock"
    when 2
      @second_option = "paper"
    when 3
      @second_option = "scissors"
    end

    return decide_winner()

  end

end
