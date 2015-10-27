# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions = [{:category => 'colors', :image => 'link', :prompt=> "What color is this?", :answer => "blue"},
          {:category => 'colors', :image => 'link', :prompt=> "What color is this?", :answer => "green"},
          {:category => 'colors', :image => 'link', :prompt=> "What color is this?", :answer => "pink"},
    	  {:category => 'shapes', :image => 'link', :prompt=> "1What shape is this?", :answer => "circle"},
    	  {:category => 'shapes', :image => 'link', :prompt=> "6What shape is this?", :answer => "triangle"},
    	  {:category => 'shapes', :image => 'link', :prompt=> "5What shape is this?", :answer => "square"},
    	  {:category => 'shapes', :image => 'link', :prompt=> "2What shape is this?", :answer => "rectangle"},
    	  {:category => 'animals', :image => 'link', :prompt=> "2What animal is this?", :answer => "dog"},
    	  {:category => 'animals', :image => 'link', :prompt=> "2What animal is this?", :answer => "cat"},
    	  {:category => 'animals', :image => 'link', :prompt=> "2What animal is this?", :answer => "fish"},
  	 ]

questions.each do |question|
  Question.create!(question)
end
