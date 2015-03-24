class QuestionsController < ApplicationController
  def index
    @questions = Question.order(:created_at)
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
  end
end
