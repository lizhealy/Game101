require 'rails_helper'
require 'spec_helper'
require 'questions_controller'
# require 'capybara/rspec'


describe QuestionsController, :type => :controller do
    before do
        @game = QuestionsController.new
        @all_categories = @game.get_all_categories
        
    end
    describe 'shows all categories' do
        it 'should show all events' do 
            get :categories
            expect(response).to render_template(:categories)
        end
    end
    
    describe 'show' do
         it "shouldn't accept parameters" do
            expect { subject.show( :category ) }.to raise_error
        end
    end
     
    describe 'index' do
        it 'should render the index view' do
            get :index
            expect(response).to render_template(:index)
        end
    end
    
    describe 'check_answer' do
        it 'should flash a message' do
            get :check_answer
            expect(flash[:notice]).to be_present
         end
     end
     
    #  describe 'get_all_categories' do
    #      it 'should return three categories' do
    #         expect(@game.get_all_categories).not_to eq nil
    #         expect(@game.get_all_categories).to be_an_instance_of(Array)
    #         # @game.instance_variable_get(:@all_categories)
    #         expect(assigns(@all_categories)).to match_array(["Animals","Colors","Shapes"])
            
    #         # expect(@game.get_all_categories).to include("Animals")
    #     end
    # end
end


            
    
    

    
