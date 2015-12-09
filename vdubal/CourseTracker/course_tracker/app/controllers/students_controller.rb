class StudentsController < ApplicationController

    def index
        @students = Student.all
        @student = Student.new
        render "index" 
    end


	def enrollments
		
	end


    def create
         student = Student.new(student_params)
    
    # User.create(
    #  firstname: params[:user][:firstname],
     # lastname: params[:user][:lastname],
      #username:  params[:user][:username], 
      # role: params[:user][:role]
        #)
        student.save
    end
    
    
    private
        def student_params
            params.require(:student).permit(:name)
        end

end