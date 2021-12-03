class Plantopium < ApplicationRecord
  has_many :diaries, dependent: :destroy, foreign_key: 'plantopia_id'
  validates :name, presence: true, uniqueness: true

  has_one_attached :plantpic

  belongs_to :user

  scope :user_plantopia, ->(user) { where(['user_id = ?', user.id]) }
end
