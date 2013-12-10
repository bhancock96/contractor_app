class ImagesController < ApplicationController
	def create
		job = Job.find(params[:image][:job_id])
		contractor = job.contractor
		Image.create(params[:image])
		redirect_to contractor_job_url(contractor, job)
	end
end 