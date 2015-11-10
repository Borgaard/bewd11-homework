class CoursesController < ApplicationController
	def index
		@courses = Course.all
		render "index"
	end

	def show
		@course = Course.find(params[:id])
	end

	def new
		@course = Course.new
	end

	def edit
		@course = Course.find(params[:id])
		render "edit"
	end

	def create
		@course = Course.create(course_params)

		if @course.valid?
			redirect_to "/enrollments"
		else
			flash[:error] = "Form validation failed"
			redirect_to courses_path
		end
	end

	def update
		@course = Course.find(params[:id])
		if @course.update_attributes(course_params)
			redirect_to '/enrollments'
		else
			render 'edit'
		end
	end

	def destroy
		@course = Course.find(params[:id])
		course.destroy
		redirect_to "/"
	end

	private
		def course_params
			params.require(:course).permit(:name, :length, :difficulty)
		end
end
