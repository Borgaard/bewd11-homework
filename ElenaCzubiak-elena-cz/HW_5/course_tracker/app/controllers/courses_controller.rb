class CoursesController < ApplicationController
    
def index
    
    @courses = Course.all
    @course = Course.new
    
end

def create
    
    Course.create(course_params)
    
    redirect_to courses_path
end    

def course_params
   params.require(:course).permit(:name, :length, :difficulty) 
end    
    
end
