class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', "I don't care, get dressed and go to work!", 'Silly question, get dressed and go to work!']

    if params[:answer] == 'I am going to work'
      @answers = @answers[0]
    elsif params[:answer].include? '?'
      @answers = @answers[2]
    else
      @answers = @answers[1]
    end
  end
end
