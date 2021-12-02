class Diary < ApplicationRecord
  belongs_to :plantopia
  validates :title, :plantopia, presence: true
end
