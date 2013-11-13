class ContractorsController < ApplicationController
	def new
		@contractor = Contractor.new
	end

	def create
		contractor = Contractor.create(params[:contractor])
		if contractor.save
			session[:contractor_id] = contractor.id
			redirect_to contractor_url(contractor)
		else
			render new_contractor_url
		end
	end

	def show
		@contractor = Contractor.find(params[:id])
	end
end