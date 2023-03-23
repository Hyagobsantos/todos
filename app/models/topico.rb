class Topico < ApplicationRecord
  has_many :tasks
  belongs_to :user

  #scope :topico_by_user, -> (current_id) {where("user_id = ?", current_id)}

  validates :titulo, length: { minimum: 3 }, uniqueness: true

end
