class QuestionsController < ApplicationController

  # See Section 4.5: Strong Parameters below for an explanation of this method:
  # http://guides.rubyonrails.org/action_controller_overview.html
  def question_params
    params.require(:question).permit(:category, :prompt, :image, :answer, :all_answers, :selected_answer)
  end
end