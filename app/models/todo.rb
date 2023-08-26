class Todo < ApplicationRecord
  has_one_attached :photo
  validates :title, presence: true
  validates :description, presence: true
end
