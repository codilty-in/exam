class TestQuestionsController < ApplicationController
  def index
    @test_questions = TestQuestion.all
  end

  def show
    @test_question = TestQuestion.find(params[:id])
  end

  def new
    @test_question = TestQuestion.new
  end

  def create
    @test_question = TestQuestion.new(params[:test_question])
    if @test_question.save
      redirect_to @test_question, :notice => "Successfully created test question."
    else
      render :action => 'new'
    end
  end

  def edit
    @test_question = TestQuestion.find(params[:id])
  end

  def update
    @test_question = TestQuestion.find(params[:id])
    if @test_question.update_attributes(params[:test_question])
      redirect_to @test_question, :notice  => "Successfully updated test question."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @test_question = TestQuestion.find(params[:id])
    @test_question.destroy
    redirect_to test_questions_url, :notice => "Successfully destroyed test question."
  end
end
