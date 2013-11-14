class Dislike < ActiveRecord::Base
  
  #db columns: integer :count
  
  #belongs_to :user > I think a dislike belongs to a user right? 
  belongs_to :post
  belongs_to :comment
  belongs_to :question
  belongs_to :answer
  #belongs_to :photo
end
