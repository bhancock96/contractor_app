class EmployeesController < ApplicationController
	def new
		@employee = Employee.new
	end

	def create
		contractor = Contractor.find(params[:contractor_id])
		employee = contractor.employees.create(params[:employee])
		if employee.save
			redirect_to contractor_employee_url(contractor, employee)
			flash[:notice] = "Employee successfully created"
		else
			render new_contractor_employee_url(contractor)
			flash[:notice] = "Name, phone number, birth date, and date hired must all be filled in."
		end
	end
end