class AddColumnToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :result, :integer, default: 0
  end
end
