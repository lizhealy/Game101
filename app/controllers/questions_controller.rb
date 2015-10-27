class QuestionsController < ApplicationController
    
    def index
        category_choice = params[:category]
        @questions = Question.all
    
    end
    
    def get_all_categories
        @all_categories = Question.uniq.pluck(:category)
    end
    
end
