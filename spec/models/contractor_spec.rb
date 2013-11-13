require 'spec_helper'

describe Contractor do
	it { should have_many(:jobs) }
	it { should validate_uniqueness_of(:email) }
	it { should validate_presence_of(:email) }
	it { should validate_presence_of(:password) }
	it { should validate_presence_of(:contractor_name) }
	it { should validate_presence_of(:business_name) }
	it { should have_secure_password }
	it { should_not allow_value("notanemail").for(:email) }
	it { should allow_value("me@you.com").for(:email) }
end