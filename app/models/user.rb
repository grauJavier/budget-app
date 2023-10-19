class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :transactions, foreign_key: 'author_id'
  has_many :categories, foreign_key: 'author_id'

  validates :name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, uniqueness: true
end
