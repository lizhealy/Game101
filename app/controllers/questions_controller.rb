class QuestionsController < ApplicationController
    
    def index
        category_choice = params[:category]
        # @questions = Question.all
        redirect_to questions_path
    end
    
    def get_all_categories
        @all_categories = Question.uniq.pluck(:category)
    end
    
end
