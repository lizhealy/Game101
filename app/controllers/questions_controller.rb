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
    category_choice = params[:category]
        @questions = Question.where(category: category_choice)
  end
    
    def get_all_categories
        @all_categories = Question.uniq.pluck(:category)
    end
    
    def new
       
         element = get_random_question
         @answer = element.answer
         
         optionArray = Question.where(category: element.category)
         optionArray.uniq.pluck(:answer)
         
         optionArray.delete(@answer)
         
         @option1 = optionArray[rand(optionArray.length)].answer
        while @option1 == nil
            @option1 = optionArray[rand(optionArray.length)].answer
        end
        
        @option2 = optionArray[rand(optionArray.length)].answer
         
        while(@option1 == @option2 || @option2 == nil)
              @option2 = optionArray[rand(optionArray.length)].answer
        end
    end
    
    def get_random_question 
        category_choice = params[:category]
        random_questions = Question.where(category: category_choice)
        @random_question = random_questions[rand(random_questions.length)]
    end
    
    def dummy_answers
        @all_answer_options = Question.uniq.pluck(:answer)
    end
end
