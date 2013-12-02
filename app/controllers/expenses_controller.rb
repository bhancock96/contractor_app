class ExpensesController < ApplicationController
	def index
		@contractor = Contractor.find(params[:contractor_id])
		@expenses = @contractor.expenses.all
	end
	def new
		@contractor = Contractor.find(params[:contractor_id])
		@job = @contractor.jobs.find(params[:job_id])
		@expense = Expense.new
	end

	def create
		contractor = Contractor.find(params[:contractor_id])
		job = contractor.jobs.find(params[:job_id])
		expense = job.expenses.new(params[:expense])
		expense.contractor_id = contractor.id
		expense.save
		if expense.save
			redirect_to contractor_job_url(contractor, job)
		else
			redirect_to contractor(contractor)
		end
	end
end