class Answer < ApplicationRecord
	belongs_to :end_user
	belongs_to :question
	has_many :favorites

end
