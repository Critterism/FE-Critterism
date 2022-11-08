class CreateTrivia < ActiveRecord::Migration[5.2]
  def change
    create_table :trivia do |t|
      t.string :category
      t.string :type
      t.string :question
      t.string :correct_answer
      t.array :incorrect_answers
      t.array :answers

      t.timestamps
    end
  end
end
