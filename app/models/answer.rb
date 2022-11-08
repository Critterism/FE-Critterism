class Answer < ApplicationRecord
  validates :correct, :incorrect1, :incorrect2, :incorrect3, :answer_type, presence: true
  belongs_to :game
end
