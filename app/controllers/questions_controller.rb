class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_end_user!, only: [:new, :edit, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  #================================= 検索機能 =========================================
    @q = Question.ransack(params[:q])
    @search_questions = @q.result(distinct: true).recent
    # ransackをインストールしたのでransackメソッドが使用可。
    # 現場で使える Ruby on Rails 5速習実践ガイド p292
  #================================= 検索機能 =========================================
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @answers = @question.answers.all
    @search = Answer.ransack(params[:q])
  end

  # def search
  #   params[:q] = { sorts: params[:sorts] }
  #   @search = Answer.ransack(params[:q])
  #   @question = Question.find(params[:question_id])
  #   @answers = @question.answers.all
  #   render :show
  # end
  def search
    @question = Question.find(params[:question_id])
    if params[:q].present?
    # 検索フォームからアクセスした時の処理
      @search = Answer.ransack(params[:q])
      @answers = @search.result
      render :show
    else
    # 検索フォーム以外からアクセスした時の処理
      params[:q] = { sorts: 'id desc' }
      @search = Answer.ransack()
      @answers = @question.answers
      render :show
    end
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.end_user = current_end_user

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:end_user_id, :title, :body)
    end
    def search_params
    params.require(:q).permit(:sorts)
    # 他のパラメーターもここに入れる
  end
end
