class ExperiencesController < ApplicationController
    before_action :set_experience, only: [:edit, :update, :destroy]
 
    def index
    end
  
    def new
      @experience = Experience.new
    end
  
    def create
      @experience = Experience.new(experience_params)
      @experience.user = current_user
      @experience.save
      redirect_to user_profile_path
    end
  
    def edit
    end
  
    def update
      @experience.user = current_user
      @experience.update(experience_params)
      redirect_to user_profile_path
    end
  
    def destroy
      @experience.destroy
      redirect_to user_profile_path
    end
  
    private
  
    def set_experience
      @experience = Experience.find(params[:id])
    end
  
    def experience_params
      params.require(:experience).permit(:company_name, :company_sector, :title, :functional_area, :description, :years)
    end
  end