
require 'rails_helper'
require 'spec_helper'
require 'questions_controller'
require 'rspec/rails'




describe QuestionsController, :type => :controller do
   before do
      @test = QuestionsController.new
   end
   subject { @test }
   describe "show" do
      it "clicks submit" do
         visit questions_id_categories_path
         click_button 'Questions on Shapes'
         page.should have_content("Correct")
      end
      it "shouldn't accept parameters" do
         expect { subject.show( :category ) }.to raise_error
      end
   end
      
end