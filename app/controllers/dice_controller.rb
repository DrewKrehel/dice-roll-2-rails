class DiceController < ApplicationController
  def roll
    @num_die1 = params.fetch("die1").to_i
    @num_die2 = params.fetch("die2").to_i

    @dice = Array.new(@num_die1) {rand(1..@num_die2)}
    @sum = @dice.sum

    @outcome = "You rolled a total of #{@sum}."

    render { :template => "dice_templates/outcome"}
  end
end
