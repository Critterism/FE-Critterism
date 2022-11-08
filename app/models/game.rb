class Game < ApplicationRecord
  validates :category, :question, :difficulty, presence: true
  has_many :answers
end
