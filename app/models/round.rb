class Round < ApplicationRecord
  has_many :guesses
  belongs_to :user
  belongs_to :deck
  has_many :cards, through: :deck, source: :card
end
