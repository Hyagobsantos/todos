class Task < ApplicationRecord
  scope :completas, -> { where(done: true) }
  scope :incompletas, -> { where(done: [false, nil]) }


  belongs_to :topico
  belongs_to :user
end
