class JobsController < ApplicationController
	def new
		@contractor = Contractor.find(session[:contractor_id])
		@job = @contractor.jobs.new
	end

	def create
		contractor = Contractor.find(params[:contractor_id])
		job = contractor.jobs.create(params[:job])
		if job.save
			redirect_to contractor_job_url(contractor, job)
		else
			render new_contractor_job_url(contractor)
		end
	end

	def show
		@job = Job.find(params[:id])
	end
end