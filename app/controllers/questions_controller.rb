class QuestionsController < ApplicationController
    
    def index
        category_choice = params[:category]
        redirect_to to a new view once thats made based on category choice
        
    end
    
    def get_all_categories
        @all_categories = Question.uniq.pluck(:category)
    end
    
end
