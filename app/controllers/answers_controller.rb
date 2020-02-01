class AnswersController < ApplicationController
  before_action :set_answer, only: [ :edit, :update, :destroy]
  before_action :authenticate_end_user!, only: [:new, :edit, :destroy]

  def index
    @answers = Answer.all
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.end_user_id = current_end_user.id
    @answer.question_id = @question.id

  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.end_user_id = current_end_user.id
    @answer.question_id = @question.id

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @question, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @qusetion = Question.find(question_id: params[:question_id], answer_id: params[:answer_id] )
    @answer = @qusetion.answers


  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:end_user_id, :title, :body)
    end
end
