class Question < ActiveRecord::Base
  attr_accessible :category
  attr_accessible :prompt
  attr_accessible :image
  attr_accessible :answer
    def self.all_categories
      %w(shapes colors animals)
    end
  
end

