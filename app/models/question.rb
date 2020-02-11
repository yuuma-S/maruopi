class Question < ApplicationRecord

	belongs_to :end_user
	has_many :answers
	has_many :comments

	# =============== validate =======================================
	validates :title, presence: true, length: {maximum: 200, miximum: 10}
	validates :body, presence: true, length: {maximum: 3000, miximum: 10}
	# ================================================================

	scope :recent, -> { order(created_at: :desc) }
end
