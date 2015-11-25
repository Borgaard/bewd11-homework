class MembersController < ApplicationController
    
    def index
        @members = Member.all
        @member = Member.new
    
        end
    def create
        Member.create(member_params)
        
        redirect_to members_path
        
    end
    
private
def member_params
    params.require(:member).permit(:name, :avatar)
end    
    
    
end
