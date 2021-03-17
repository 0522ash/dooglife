class Foster < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :gender
  belongs_to :age
  belongs_to :month
  belongs_to :vaccine
  belongs_to :castration

  with_options presence: true do
    validates :title
    validates :detail
    validates :image
  end

  with_options presence: true, numericality: { other_than: 1, message: 'Select' } do
    validates :prefecture_id
    validates :gender_id
    validates :age_id
    validates :month_id
    validates :vaccine_id
    validates :castration_id
  end
    
end
