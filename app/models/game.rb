class Game < ApplicationRecord
  enum result: {unanswered: 0, correct: 1, incorrect: 2}

  validates :category, :question, :difficulty, presence: true
  has_one :answer
  belongs_to :user

  before_destroy :destroy_answers

  def self.next_question(user_id)
    where(result: 0, user_id: user_id).take(1)
  end

  def destroy_answers
    self.answer.destroy
  end
end
