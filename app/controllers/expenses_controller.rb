class ExpensesController < ApplicationController
	def index
		@contractor = Contractor.find(params[:contractor_id])
		if !params[:sort_by]
			@expenses = @contractor.expenses.all
		elsif params[:sort_by] == "Store"
			@expenses = Expense.where(contractor_id: @contractor.id).order("store ASC")
		elsif params[:sort_by] == "Items Bought"
			@expenses = Expense.where(contractor_id: @contractor.id).order("expense_type ASC")
		elsif params[:sort_by] == "Date"
			@expenses = Expense.where(contractor_id: @contractor.id).order("created_at DESC")
		elsif params[:sort_by] == "Customer Name"
			@expenses = Expense.joins(:job).where(contractor_id: @contractor.id).order("customer_name ASC")	
		end
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

	def sort
		# @contractor = Contractor.find(params[:contractor_id])
		# if params[:sort_by] = "Date"
		# 	@expenses = @contractor.expenses.order("created_at DESC")
		# 	redirect_to contractor_expenses_url(@contractor)	
		# end
	end
end