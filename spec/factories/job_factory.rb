FactoryGirl.define do
	factory :job do
		customer_name "Fred Johnson"
		customer_street_address "123 Main St."
		customer_city "Chicago"
		customer_zipcode "60000"
		customer_email "fred@test.com"
		customer_phone_number "3122435498"
		status "Booked"
		booked_sales "1200"
		contractor
	end 
end