class JobsController < ApplicationController
    before_action :set_company, only: %i[new create]

    def new
        @company = Company.find(params[:company_id])
        @job = Job.new
    end

    def create
        @job = Job.new(job_params)
        @job.company = @company
        if @job.save
            redirect_to company_profile_path(@company)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def set_company
        @company = Company.find(params[:company_id])
    end
    
    def job_params
        params.require(:job).permit(:title, :level, :sector, :description, :education_requirement)
    end
end