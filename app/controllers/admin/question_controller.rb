class Admin::QuestionController < ApplicationController
  def index
  	@answer = Answer.all
  end

  def show
  end

  def destroy
  end
end
