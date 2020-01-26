class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
has_many :questions
has_many :answers
has_many :comments
has_many :favorites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
