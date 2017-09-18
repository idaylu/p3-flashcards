class Guess < ApplicationRecord
  belongs_to :card
  belongs_to :round
  has_one :deck, through: :round, source: :deck

end
