class Plantopium < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  has_one_attached :plantpic
end
