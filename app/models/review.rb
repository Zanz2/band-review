class Review < ActiveRecord::Base
    audited
    belongs_to :user
    belongs_to :band
    
end
