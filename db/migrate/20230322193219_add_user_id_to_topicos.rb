class AddUserIdToTopicos < ActiveRecord::Migration[7.0]
  def change
    add_reference :topicos, :user, foreign_key: true
  end
end
