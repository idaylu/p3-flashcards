class Round < ApplicationRecord
  has_many :guesses
  belongs_to :user
  belongs_to :deck
  has_many :cards, through: :deck, source: :cards
  has_many :correct_cards, ->{ where("guesses.correct" => "true" ) }, through: :guesses, source: :card

  has_many :cards_correct_on_first_attempt,
    ->{ where("guesses.total_guesses" => 1 ) },
    through: :guesses, source: :card

  def correct_cards_on_first_attempt
    self.cards_correct_on_first_attempt.length
  end

  def incorrect_cards
    cards - correct_cards
  end

  def total_attempts
    self.guesses.sum(:total_guesses)
  end

end
