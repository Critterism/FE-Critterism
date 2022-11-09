class Answer < ApplicationRecord
  validates :correct, :incorrect1, :answer_type, presence: true
  validates_presence_of :incorrect2, :incorrect3, unless: -> { answer_type = 'boolean' }
  belongs_to :game
end
