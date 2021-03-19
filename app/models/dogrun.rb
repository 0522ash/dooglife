class Dogrun < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture


  validates :prefecture_id, presence: true, numericality: { other_than: 1, message: 'Select' }

  validates :title, presence: true
  validates :user, presence: true
end
