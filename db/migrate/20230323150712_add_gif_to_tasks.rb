class AddGifToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :gif, :string
  end
end
