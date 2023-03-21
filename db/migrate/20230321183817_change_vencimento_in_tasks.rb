class ChangeVencimentoInTasks < ActiveRecord::Migration[7.0]
  def up
    change_table :tasks do |t|
      t.change :vencimento, :date
    end
  end

  def down
    change_table :tasks do |t|
      t.change :vencimento, :datetime
    end
  end
end
