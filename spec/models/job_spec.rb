require 'spec_helper'

describe Job do
  it { should belong_to(:contractor) }

  it { should validate_presence_of(:customer_name) }
  it { should validate_presence_of(:customer_street_address) }
  it { should validate_presence_of(:customer_zipcode) }
  it { should validate_presence_of(:customer_phone_number) }

  it { should allow_mass_assignment_of(:customer_name) }
  it { should allow_mass_assignment_of(:customer_street_address) }
  it { should allow_mass_assignment_of(:customer_zipcode) }
  it { should allow_mass_assignment_of(:customer_phone_number) }
  it { should allow_mass_assignment_of(:customer_email) }

end
