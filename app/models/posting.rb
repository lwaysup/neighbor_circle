class Posting < ActiveRecord::Base
    belongs_to :user
    has_one :agreement, through: :user
    
end