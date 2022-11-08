class CreateGame < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :category
      t.string :difficulty
      t.string :question
      t.string :type
    end
  end
end
