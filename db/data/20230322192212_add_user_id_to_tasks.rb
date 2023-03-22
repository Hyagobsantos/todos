# frozen_string_literal: true

class AddUserIdToTasks < ActiveRecord::Migration[7.0]
  def up
    user_id = User.first.id
    Task.update_all user_id: user_id
  end

  def down
    if User.count > 1
      raise ActiveRecord::IrreversibleMigration
    else
      Task.update_all user_id: nil
    end
  end
end
