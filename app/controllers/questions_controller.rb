class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to @question, :notice => "Successfully created question."
    else
      render :action => 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
    #if @question.update_attributes(params[:question])
      redirect_to @question, :notice  => "Successfully updated question."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_url, :notice => "Successfully destroyed question."
  end
  private

    def question_params
      params.require(:question).permit(:question, :test_question_id, answers_attributes: [:id,:answer,:is_correct,:_destroy])
    end
end
