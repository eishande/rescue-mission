class QuestionsController < ApplicationController
  def index
    @questions = Question.order(:created_at)
  end

  def new
    @question = Question.new
    @user = current_user
  end
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path(@question), :notice => "Question added."
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  protected
  def question_params
    params.require(:question).permit(:title, :description)
  end
end
