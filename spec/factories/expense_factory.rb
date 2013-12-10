FactoryGirl.define do
	factory :expense do
		store "Home Depot"
		expense_type "Wood"
		amount "21.21"
		job
	end
end