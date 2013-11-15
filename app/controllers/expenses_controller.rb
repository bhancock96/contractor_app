class ExpensesController < ApplicationController
	def new
		@contractor = Contractor.find(params[:contractor_id])
		@job = @contractor.jobs.find(params[:job_id])
		@expense = Expense.new
	end

	def create
		contractor = Contractor.find(params[:contractor_id])
		job = contractor.jobs.find(params[:job_id])
		puts params[:expense][:amount]
		expense = job.expenses.create(params[:expense])
		puts expense.amount
		if expense.save
			redirect_to contractor_job_url(contractor, job)
		else
			redirect_to contractor(contractor)
		end
	end
end