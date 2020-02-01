class Question < ApplicationRecord

	belongs_to :end_user
	has_many :answers
	has_many :comments

end
