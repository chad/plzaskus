class QuestionsController < ApplicationController
  def index
    @question = Question.for_today
    @answer = Answer.new(:question => @question)
  end
end
