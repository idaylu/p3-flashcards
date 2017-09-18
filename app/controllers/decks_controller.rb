class DecksController < ApplicationController
  def index
    @decks = Deck.order(created_at: :DESC)
  end

  def show
    @deck = Deck.find(params[:id])
  end
end
