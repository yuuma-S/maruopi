class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
has_many :questions
has_many :answers
has_many :comments
has_many :favorites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id
  has_many :followings, through: :active_relationships, source: :follower

  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :followers, through: :passive_relationships, source: :following

  def followed_by?(end_user)
    passive_relationships.find_by(following_id: end_user.id).present?
  end
end
