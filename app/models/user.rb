class User < ApplicationRecord
  has_many :rounds
  has_many :guesses, through: :rounds, source: :guess
  has_many :cards, through: :guesses, source: :card
  has_many :decks, through: :rounds, source: :deck

  validates :username, :email, :password_digest, presence: true
  validates_uniqueness_of :username, :email

  has_secure_password

end
