class QuestionsController < ApplicationController
  def ask
    # linked to ask page with the input question form
  end

  def answer
    # coach logic in answer action
    @question = params[:query]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

  # def answer
  #   # coach logic in answer action
  #   @answer = if params[:query] == 'I am going to work'
  #               'Great!'
  #             elsif params[:query].end_with?('?')
  #               'Silly question, get dressed and go to work!'
  #             else
  #               "I don't care, get dressed and go to work!"
  #             end
  # end
