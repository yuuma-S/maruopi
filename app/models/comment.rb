class Comment < ApplicationRecord
	belongs_to :question
	belongs_to :end_user

	# =============== validate ======================
	# validates :comment, presence: true
	# ===============================================

end
