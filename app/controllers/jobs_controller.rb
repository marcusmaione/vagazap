class JobsController < ApplicationController
    before_action :set_job, only: [:show, :edit, :update, :destroy, :candidates]
  
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

    def like
        @job = Job.find(params[:job_id])
        current_user.like(@job)
        redirect_to jobs_user_index_path
    end

    def candidates
        job = Job.find(params[:job_id])
        @prefiltered_candidates = User.initial_filter(job)
        candidates_hash = {}
        match_potential = 0
        
        @prefiltered_candidates.each do |candidate|
        
            candidate.experiences.each do |experience|
                match_potential += experience.years if experience.functional_area == job.sector
            end
          
            candidate.courses.each do |course|
                match_potential += 5 if course.level.include?("Doctorate")
                match_potential += 3 if course.level.include?("Master's")
                match_potential += 1 if course.level.include?("Bacherlor's")
            end
        
            candidates_hash[candidate] = match_potential
        
            match_potential = 0
        end
        
        @filtered_candidates = candidates_hash.sort_by { |key, value| value }.reverse
    end
  
    def candidate
        @candidate = User.find(params[:user_id])
    end
  
    private
  
    def set_job
        @job = Job.find(params[:job_id])
    end
  
    def job_params
        params.require(:job).permit(:title, :level, :sector, :description, :education_requirement)
    end
end