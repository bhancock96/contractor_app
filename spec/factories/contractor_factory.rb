FactoryGirl.define do
	factory :contractor do
		contractor_name "John Smith"
		business_name "John's Carpentry"
		email "test@test.com"
		password "password"
		password_confirmation "password"
	end

end