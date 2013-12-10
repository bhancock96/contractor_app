require 'spec_helper'

describe Image do
  it { should validate_presence_of(:file) }
  it { should validate_presence_of(:image_type) }

  it { should allow_mass_assignment_of(:file) }
  it { should allow_mass_assignment_of(:image_type) }

  it { should belong_to(:job) }
end
