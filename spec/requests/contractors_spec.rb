require 'spec_helper'

describe "Contractor" do	 
  describe "POST /contractors/:id" do
    it "creates a new contractor" do
      visit new_contractor_url
      fill_in 'contractor_contractor_name', :with => "John"
      fill_in 'contractor_business_name', :with => "John's Carpentry"
      fill_in 'contractor_location', :with => "Chicago"
      fill_in 'contractor_email', :with => 'john@test.com'
	  fill_in 'contractor_password', :with => 'password'
	  click_button 'Sign Up'
	  expect(page).to have_content("John's Carpentry")
    end
  end

  describe "GET /contractors/new" do
  	it "displays new account form" do
  	  visit new_contractor_url
  	  expect(page).to have_content("New Account")
  	end
  end

  # describe "GET jobs/new from contractor show" do
	 #  @contractor = Contractor.create(contractor_name: 'John', email: 'john@test.com',
		# 							 password: 'password', password_confirmation: 'password',
		# 							 business_name: 'John\'s Carpentry', location: 'Chicago')
  # 	it "displays job creation form" do
  # 	  visit contractor_url(@contractor)
  # 	  click_link "Create a Job"
  # 	  expect(page).to have_content("Create a Job")
  # 	end
  # end
    
end
