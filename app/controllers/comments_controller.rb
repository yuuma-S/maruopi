class CommentsController < ApplicationController
  def create
  	@question = Question.find(params[:question_id])
    @comment = current_end_user.comments.new(comment_params)
    @comment.question_id = @question.id
    @comment.save
    # redirect_to question_path(@question)
  end

  def destroy
    @question = Question.find(params[:question_id])

    @question_comment = Comment.find(params[:id])
    if @question_comment.end_user != current_end_user
      redirect_to request.referer
    end
    @question_comment.destroy
    
  end

  private
	def comment_params
    params.require(:comment).permit(:end_user_id,:question_id,:body)
	end
end
