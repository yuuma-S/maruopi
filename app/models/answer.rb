class Answer < ApplicationRecord
	belongs_to :end_user
	belongs_to :question
	has_many :favorites

    def favorited_by?(end_user)
        favorites.where(end_user_id: end_user.id).exists?
    end

    # =================== favoriteのレコード数をカウント ==================

  	# =================================================================
end