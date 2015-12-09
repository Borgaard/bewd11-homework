class EnrollmentsController < ApplicationController
	
	def new
		@courses = Course.all
	end
	
	def create
		courses_selected = params[:student][:course]

		
		courses_selected.each do |course_id|
				Enrollment.create(student_id: params[:id], course_id: course_id)
		end
		
		redirect_to :students
	end
	
end
