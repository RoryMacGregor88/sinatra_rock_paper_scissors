require('pry-byebug')
class Game

  attr_reader :p1_choice, :p2_choice, :choices, :outcome

  def initialize(p1_choice, p2_choice)
    @p1_choice = p1_choice.to_s
    @p2_choice = p2_choice.to_s
    @choices = @p1_choice + @p2_choice
  end

  def winner()
    outcome = @choices.chars.sort.join
    return "Rock wins!" if outcome == 'ccikoorrssss'
    return "Paper wins!" if outcome == 'acekopprr'
    return "Scissors win!" if outcome == 'aceiopprrssss'
  end

  def check_winning_player()
    if winner() == "Rock wins!" && @p1_choice == 'rock'
      return "Player 1 wins!"; else return "Player 2 wins!"
    end
    if winner() == "Paper wins!" && @p1_choice == 'paper'
      return "Player 1 wins!"; else return "Player 2 wins!"
    end
    if winner() == "Scissors wins!" && @p1_choice == 'scissors'
      return "Player 1 wins!"; else return "Player 2 wins!"
    end
    return "Draw!" if @p1_choice == @p2_choice
    return "Unrecognised entry"
  end

end

game1 = Game.new('rock', 'paper')

# binding.pry
nil
