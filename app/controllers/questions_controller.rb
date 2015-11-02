class QuestionsController < ApplicationController
    # def show
    #     id = params[:category] # retrieve movie ID from URI route
    #     @question = Question.find(id) # look up movie by unique ID
    #     # will render app/viewsmovies/show.<extension> by default
    # end

    def show
        # category_choice = params[:category]
        # @questions = Question.all
        # redirect_to questions_path(category_choice)
        @selected_category = params[:category] 
        @all_questions = Question.where(category: @selected_category)
        
        @question = @all_questions.sample
        if(@question.nil?)
            @answer = 'blue'
        else
        @answer = @question.answer
        end
     
        
        optionsArray = @all_questions.uniq.pluck(:answer)

        @option1 = optionsArray.sample
        @option2 = optionsArray.sample

        while @option1 == @answer
            @option1 = optionsArray.sample
        end

        while(@option1 == @option2 || @option2 == @answer)
            @option2 = optionsArray.sample
        end

        @answerChoices = Array.new
        @answerChoices.push(@answer)
        @answerChoices.push(@option1)
        @answerChoices.push(@option2)
        @answerChoices.shuffle
  
    end
    
    
    def categories
        @all_categories = get_all_categories
  
        
    end
    
    def index
        @all_categories = get_all_categories


    end
    
    def get_all_categories
        @all_categories = Question.uniq.pluck(:category)
    end
    
    def edit
        if(params[:answer] == @answer)
            flash[:notice] = "Correct"
        else
            flash[:notice] = "Incorrect"
        end

    end
    
    def check_answer
        if(params[:answer] == @answer)
            flash[:notice] = "Correct"
        else
            flash[:notice] = "Incorrect"
        end
    end
    
    
end
