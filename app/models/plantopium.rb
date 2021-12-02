class Plantopium < ApplicationRecord
  has_many :diaries, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true

  has_one_attached :plantpic
end
