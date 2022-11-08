class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :correct
      t.string :incorrect1
      t.string :incorrect2
      t.string :incorrect3
      t.references :game, foreign_key: true
    end
  end
end
