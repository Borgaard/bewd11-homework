class MembersController < ApplicationController
    def index
        @members = Member.all
        @new_member = Member.new
        render "index"
    end
    
    def create
        add_member = Member.new(member_params)
        add_member.save
        redirect_to members_path
    end
    
private

    def member_params
        params.require(:member).permit(:member_name, :image)
    end
end





