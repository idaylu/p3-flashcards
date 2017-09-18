class GuessesController < ApplicationController

  def create
    @guess = Guess.find_or_create_by(round_id: guess_params[:round_id], card_id: guess_params[:card_id])
    @guess.total_guesses += 1
    @guess.save
    @card = Card.find_by(id: @guess.card.id)
    @round = Round.find(guess_params[:round_id])
    given_answer = guess_params[:answer]
    if @card.answer == given_answer
      @guess.correct = true
      @guess.save
    end
    render template: "rounds/show"
  end


  private
  def guess_params
    params.require(:guess).permit(:round_id, :card_id, :answer)
  end

end
