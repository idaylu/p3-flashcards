class Guess < ApplicationRecord
  before_save :default_values
  belongs_to :card
  belongs_to :round
  has_one :deck, through: :round, source: :deck

  def default_values
    self.correct ||= false
    self.total_guesses ||= 0
  end

end
