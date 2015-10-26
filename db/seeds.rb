# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions = [{:category => 'colors', :image => 'link', :prompt=> "What color is this?"},
    	  {:category => 'shapes', :image => 'link', :prompt=> "What shape is this?"},
    	  {:category => 'animals', :image => 'link', :prompt=> "What animal is this?"},
  	 ]

questions.each do |question|
  Question.create!(question)
end
