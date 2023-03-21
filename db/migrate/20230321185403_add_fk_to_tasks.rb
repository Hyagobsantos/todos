class AddFkToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :topico, foreign_key: true
  end
end
