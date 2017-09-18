class Deck < ApplicationRecord
  has_many :cards
  has_many :rounds
  has_many :guesses, through: :rounds, source: :guess

  validates :name, presence: true
end
