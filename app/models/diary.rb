class Diary < ApplicationRecord
  belongs_to :plantopia, class_name: 'Plantopium'
  validates :title, :plantopia, presence: true

  scope :user_tasks, ->(user) { joins(:note).where(['user_id = ?', user.id]) }
end
