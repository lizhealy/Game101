class QuestionsController < ApplicationController
    # def show
    #     id = params[:category] # retrieve movie ID from URI route
    #     @question = Question.find(id) # look up movie by unique ID
    #     # will render app/views/movies/show.<extension> by default
    # end

    def show
        category_choice = params[:category]
        @questions = Question.all
        redirect_to questions_path(category_choice)

    end
    
  def index
    @all_categories = Question.uniq.pluck(:category)
  end
    
    def get_all_categories
        @all_categories = Question.uniq.pluck(:category)
    end
    
end
