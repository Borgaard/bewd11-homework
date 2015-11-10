class EnrollmentsController < ApplicationController
	def index
		@students = Student.all
		@courses = Course.all
		render "index"
	end

	def new
		@student = Student.new
		@course = Course.new
	end

	def create
		courses_selected = params[:student][:course]

		Enrollment.where(student_id: params[:id]).destroy_all

		courses_selected.reject(&:blank?).each do |course_id|
			Enrollment.create(student_id: params[:id], course_id: course_id)
		end

		redirect_to :enrollments
	end

	private
		def student_params
			params.require(:student).permit(:name, :email, :age)
		end

	private
		def course_params
			params.require(:course).permit(:name, :length, :difficulty)
		end

end


# def create
# 		@course = Course.create(course_params)

# 		if @course.valid?
# 			redirect_to "/enrollments"
# 		else
# 			flash[:error] = "Form validation failed"
# 			redirect_to courses_path
# 		end
# 	end
# private
# 		def course_params
# 			params.require(:course).permit(:name, :length, :difficulty)
# 		end
