class Game < ApplicationRecord
  validates :category, :question, :difficulty, presence: true
  has_one :answer

  # def answers
  #   binding.pry
  #   answer.where()
  # end
end
