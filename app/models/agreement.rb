class Agreement < ActiveRecord::Base
    belongs_to :posting
   belongs_to :user
   
   def poster
       posting.user
   end
end