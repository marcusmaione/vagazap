class JobsController < ApplicationController
    before_action :set_job, only: [:show, :edit, :update, :destroy]
  
    def show
      @company = current_company
    end
  
    def new
      @company = Company.find(params[:company_id])
      @job = Job.new(company: @company)
    end
  
    def create
      @job = Job.new(job_params)
      @job.company = Company.find(params[:company_id])
      @job.save
      redirect_to company_profile_path(@job.company)
    end

    def index
      @company = Company.find(params[:company_id])
    end

    def user_index
    end
  
    def edit
      @company = Company.find(params[:company_id])
      @job.company = @company
    end
  
    def update
      @company = Company.find(params[:company_id])
      @job.company = @company
      @job.update(job_params)
      redirect_to jobs_index_path(current_company)
    end
  
    def destroy
      @job.destroy
      redirect_to jobs_index_path(current_company)
    end  
  
    private
  
    def set_job
      @job = Job.find(params[:job_id])
    end
  
    def job_params
      params.require(:job).permit(:title, :level, :sector, :description, :education_requirement)
    end
  end