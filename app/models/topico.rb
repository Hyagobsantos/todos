class Topico < ApplicationRecord
  has_many :tasks
  belongs_to :user

  validates :titulo, length: { minimum: 3 }, uniqueness: true

end
