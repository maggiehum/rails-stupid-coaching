class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:question]
    # p @query
    @answer = if @query == 'I am going to work'
                'Great!'
              elsif @query.include? '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
