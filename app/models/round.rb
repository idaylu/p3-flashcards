class Round < ApplicationRecord
  has_many :guesses
  belongs_to :user
  belongs_to :deck
  has_many :cards, through: :deck, source: :cards

  def incorrect_cards
    incorrect_cards_array = []
    self.cards.each do |card|
      if card.guesses.empty?
        incorrect_cards_array << card
      elsif card.guesses.first.correct == false
        incorrect_cards_array << card
      end
    end
    incorrect_cards_array
  end

end
