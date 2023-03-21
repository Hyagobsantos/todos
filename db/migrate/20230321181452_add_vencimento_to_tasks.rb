class AddVencimentoToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :vencimento, :datetime
  end
end
