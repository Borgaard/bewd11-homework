class StudentsController < ApplicationController
	def enrollments
		@students = Student.all
		render "enrollments"
	end

	# def index
	# 	@students = Student.all
	# end
	
	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def edit
		@student = Student.find(params[:id])
		render "edit"
	end

	def create
		@student = Student.create(student_params)

		if @student.valid?
			redirect_to "/enrollments"
		else
			flash[:error] = "Form validation failed"
			redirect_to students_path
		end
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_params)
			redirect_to '/enrollments'
		else
			render 'edit'
		end
	end

	def destroy
		@student = Student.find(params[:id])
		student.destroy
		redirect_to "/"
	end

	private
		def student_params
			params.require(:student).permit(:name, :email, :age)
		end	
end
