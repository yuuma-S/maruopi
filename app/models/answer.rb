class Answer < ApplicationRecord
	belongs_to :end_user
	belongs_to :question
	has_many :favorites

    def favorited_by?(end_user)
        favorites.where(end_user_id: end_user.id).exists?
    end

    # =================== favoriteのレコード数をカウント ==================
    ransacker :favorites_count do
    	query = '(SELECT COUNT(favorites.answere_id) FROM favorites where favorites.answere_id = answers.id GROUP BY favorites.answer_id)'
    	Arel.sql(query)
  	end
  	# =================================================================
end