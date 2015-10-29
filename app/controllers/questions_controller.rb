class QuestionsController < ApplicationController
    # def show
    #     id = params[:category] # retrieve movie ID from URI route
    #     @question = Question.find(id) # look up movie by unique ID
    #     # will render app/views/movies/show.<extension> by default
    # end

    def show
        # category_choice = params[:category]
        # @questions = Question.all
        # redirect_to questions_path(category_choice)
        if(!params[:category].nil?)
            @question = get_random_question
            @answer = @question.answer
            
            optionsArray = Question.where(category: params[:category])
            optionsArray.uniq.pluck(:answer)
            
            @option1 = optionsArray[rand(optionsArray.length)].answer
            @option2 = optionsArray[rand(optionsArray.length)].answer
            
            while @option1 == @answer
                @option1 = optionsArray[rand(optionsArray.length)].answer
            end
         
            while(@option1 == @option2 || @option2 == @answer)
              @option2 = optionsArray[rand(optionsArray.length)].answer
            end
        end
    end
    
    def index
        @all_categories = get_all_categories
    end
    
    def get_all_categories
        @all_categories = Question.uniq.pluck(:category)
    end
    
    def new

    end
    
    def get_random_question 
        category_choice = params[:category]
        random_questions = Question.where(category: category_choice)
        @random_question = random_questions[rand(random_questions.length)]
    end
    
    
end
