class Answer < ApplicationRecord
	belongs_to :end_user
	belongs_to :question
	has_many :favorites

	# =============== validate =================
	validates :title, presence: true, length: {maximum: 200, miximum: 10}
	validates :body ,presence: true, length: {maximum: 3000}

	# ==========================================
    def favorited_by?(end_user)
        favorites.where(end_user_id: end_user.id).exists?
    end

    # =================== favoriteのレコード数をカウント ==================

  	# =================================================================
end