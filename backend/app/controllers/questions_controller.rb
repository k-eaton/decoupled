class QuestionsController < ApplicationController



  def index
    @questions = Question.all
    render json: {questions: @questions}
  end

  def create
    @new_question = Question.new(title: params[:title], content: params[:content])
    if @new_question.save
      render json: {questions: @new_question}
    end
  end

  def upvote
    @up_question = Question.find(params[:id])


end
