class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string 'category'
      t.string 'prompt'
      t.string 'image'
      t.string 'answer'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end

  def down 
    drop_table 'questions' # deletes the whole table and all its data!
  end
    
  end
end
