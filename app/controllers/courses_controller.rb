class CoursesController < ApplicationController
    before_action :set_course, only: [:edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: [:show]
  
   # def show
     # @user = current_user
   # end
  
    def index
    end
  
    def new
      @course = Course.new
    end
  
    def create
      @course = Course.new(course_params)
      @course.user = current_user
      @course.save
      redirect_to user_profile_path
    end
  
    def edit
    end
  
    def update
      @course.user = current_user
      @course.update(course_params)
      redirect_to user_profile_path
    end
  
    def destroy
      @course.destroy
      redirect_to user_profile_path
    end
  
    private
  
    def set_course
      @course = Course.find(params[:id])
    end
  
    def course_params
      params.require(:course).permit(:level, :school, :field, :complete)
    end
  end