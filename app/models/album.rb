class Album < ApplicationRecord
  validates :title, :year, presence: true
  validates :title, length: {maximum: 100}
end
