class RoundsController < ApplicationController

  def create
    @round = Round.create(deck_id: params[:deck_id], user_id: current_user.id)
    redirect_to deck_round_url(@round.deck_id, @round.id)
  end

  def show
    @round = Round.find(params[:id])
  end
end
