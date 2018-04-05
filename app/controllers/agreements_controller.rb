class AgreementsController < ApplicationController
  before_action :find_agreement, only: [:show, :edit, :update, :destroy]
  
   def create
    @agree = Agreement.create!(posting_id: agree_params[:posting_id],
            user_id: current_user.id, service_rendered: false )
    @posting = Posting.find(agree_params[:posting_id])
    @posting.update(responded_to: true)
    redirect_to "/postings/#{@posting.id}/agreements/#{@agree.id}"
   end
   
   def new
     @agree  = Agreement.new
    end
   
    def find_agreement
      @agree = Agreement.find(params[:id])  
      
    end
    
    def index
    @agreements = Agreement.where(user_id: current_user.id)
   end
   
   def show
    @posting = Posting.find(params[:posting_id]) 
   end
   
   def edit
    #@agree = Agreement.find(params[:id])
   end
   
   def update
     @posting = Posting.find(params[:agree][:posting_id]) 
    # @agree = Agreement.find(params[:posting_id])
    @agree.update(service_rendered: true)
    redirect_to "/thatsall"
   end
  
   def thatsall
    
   end
   def destroy
    # @agree = Agreement.find(params[:posting_id])
    @agree.destroy
    redirect_to '/postings'
   end
    
    private
    def agree_params
        params.require(:agree).permit(:posting_id, :user_id, :service_rendered)
        
    end
end