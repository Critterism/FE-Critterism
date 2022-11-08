class Game < ApplicationRecord
  validates :category, :type, :question, :difficulty, presence: true
  has_many :answers
end
