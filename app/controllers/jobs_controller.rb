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
		@contractor = Contractor.find(params[:contractor_id])
		@job = @contractor.jobs.find(params[:id])
		@expense = Expense.new
	end

	def edit
		@contractor = Contractor.find(params[:contractor_id])
		@job = @contractor.jobs.find(params[:id])
	end

	def update
		contractor = Contractor.find(params[:contractor_id])
		job = contractor.jobs.find(params[:id])
		job.update_attributes(params[:job])
		if job.save
			redirect_to edit_contractor_job_url(contractor, job)
		else
			render edit_contractor_job_url(contractor, job)
		end
	end
end