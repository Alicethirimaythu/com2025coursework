class Diary < ApplicationRecord
  belongs_to :plantopia, class_name: 'Plantopium'
  validates :title, :plantopia, presence: true
end
