class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :fosters
  has_many :dogruns

  with_options presence: true do
    validates :username
    validates :name
    validates :phonenumber
    validates :dateofbirth
  end
end
