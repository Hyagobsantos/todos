# frozen_string_literal: true

class AddUserIdToTopicos < ActiveRecord::Migration[7.0]
  def up
    user_id = User.first.id
    Topico.update_all user_id: user_id
  end

  def down
    if User.count > 1
      raise ActiveRecord::IrreversibleMigration
    else
      Topico.update_all user_id: nil
    end
  end
end
