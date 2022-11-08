class Answer < ApplicationRecord
  validates :correct, :incorrect1, :incorrect2, :incorrect3, presence: true
  belongs_to :game
end
