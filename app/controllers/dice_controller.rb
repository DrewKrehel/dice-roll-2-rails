class DiceController < ApplicationController
  def roll
    # @num_die1 = params.fetch("die1").to_i
    # @num_die2 = params.fetch("die2").to_i

    # @dice = Array.new(@num_die1) {rand(1..@num_die2)}

    def roll
    @number = params[:number].to_i
    @sides = params[:sides].to_i
    @rolls = Array.new(@number) { rand(1..@sides) }
    @sum = @rolls.sum

    @outcome = "You rolled a total of #{@sum}."

    render { :template => "dice_templates/outcome"}
  end
end
