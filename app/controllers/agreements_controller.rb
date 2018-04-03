class AgreementsController < ApplicationController
   def create
    @agree = Agreement.new(posting_id: agree_params[:posting_id,]
            user_id: agree_params[:user_id], service_rendered: false )
   end
   def new
     @agree  = Agreement.new
    end
   
   def show
    @
   end
   def edit
   
   end
   def update
   
   end
   def destroy
   
   end
    
    private
    
    def agree_params
        params_required(agree).permit(:posting_id, :user_id, :service_rendered)
        
    end
end