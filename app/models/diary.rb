class Diary < ApplicationRecord
  belongs_to :plantopia, class_name: 'Plantopium'
  validates :title, :plantopia, presence: true

  scope :user_diaries, ->(user) { joins(:plantopia).where(['user_id = ?', user.id]) }
end
