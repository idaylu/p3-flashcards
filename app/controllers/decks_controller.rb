class DecksController < ApplicationController
  def index
    @decks = Deck.order(created_at: :DESC)
  end


end
