require 'spec_helper'

describe Employee do
	it { should belong_to(:contractor) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:phone_number) }
  it { should validate_presence_of(:birth_date) }
  it { should validate_presence_of(:date_hired) }

  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:phone_number) }
  it { should allow_mass_assignment_of(:birth_date) }
  it { should allow_mass_assignment_of(:date_hired) }
  it { should allow_mass_assignment_of(:street_address) }
  it { should allow_mass_assignment_of(:city) }
  it { should allow_mass_assignment_of(:state) }
  it { should allow_mass_assignment_of(:email) }
end
