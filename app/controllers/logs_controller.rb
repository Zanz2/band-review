class LogsController < ApplicationController
    
    def index
    #user=current_user.id
   
   @logs = log.all
  
    
    end
    def show
       
    
 
    end
end
