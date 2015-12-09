class MessagesController < ApplicationController
    
    before_action :authenticate

    def index
        render :json => Message.where(email_to: @auth_user.email), status: 200 
    end    
    
    def create
        message = Message.create(message_params)
        
        if message.valid?
            render :nothing => true, status:201
        else
            render :nothing => true, status: 400
        end    
        
    end
    
    def show
       render :json => Message.find(params[:id]), status: 200 
    end   
    
    def sent
		render :json => Message.where(email_from: @auth_user.email), status: 200
	end
	
    def destroy
        message = Message.find(params[:id])
        if message.destroy
          render json: {}, status: 200
        else
          render json: {error: "Story could not be deleted."}, status: 422
        end
    end

private  

    def message_params
        params.require(:message).permit(:email_to, :message_subject, :message_text).merge(email_from: @auth_user.email)
    end    
    
end
