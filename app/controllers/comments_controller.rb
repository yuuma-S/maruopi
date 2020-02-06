class CommentsController < ApplicationController
  def create
  	question = Question.find(params[:question_id])
    comment = current_end_user.comments.new(comment_params)
    comment.question_id = question.id
    comment.save
    redirect_to question_path(question)
  end

  private
	def comment_params
    params.require(:comment).permit(:end_user_id,:question_id,:body)
	end
end
