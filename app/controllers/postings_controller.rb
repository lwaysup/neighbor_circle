class PostingsController < ApplicationController
    def new
        @posting = Posting.new
    end
    def create
      
        @posting = Posting.create!(name: post_params[:name], user_id: current_user.id, open: true, close: false, responded_to: false)
        redirect_to "/postings/#{@posting.id}"
    end
    def index
        @postings = Posting.all
    end
    
    def edit
        
    end
    def update
        
    end
    
    def show
       # @posting = Posting.find(params[:id])
       @postings = Posting.where(user_id: current_user.id)
    end
    def destroy
        @posting = Posting.find(params[:id])
        @posting.destroy
        redirect_to '/postings'
    end
    private
    def post_params
        params.require(:posting).permit(:name, :user_id)
    end
end