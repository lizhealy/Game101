# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions = [{:category => 'Aladdin', :description => 'G', :image => 'link'},
    	  {:category => 'The Terminator', :description => 'R', :image => 'link'},
    	  {:category => 'When Harry Met Sally', :description => 'R', :image => 'link'},
  	 ]

questions.each do |question|
  Question.create!(question)
end


categories = [{:title => 'shapes', :description => 'Try to identity the shape'},
    	  {:title => 'colors', :description => 'Try to identity the color'},
    	  {:title => 'animals', :description => 'Try to identity the pictured animal'},
  	 ]

categories.each do |category|
  Category.create!(category)
end