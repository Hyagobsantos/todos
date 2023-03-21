class Topico < ApplicationRecord
  has_many :tasks
  validates :titulo, length: { minimum: 3 }, uniqueness: true

end
