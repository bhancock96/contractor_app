require 'spec_helper'

describe Expense do
  it { should belong_to(:job)}

  it { should validate_presence_of(:store) }
  it { should validate_presence_of(:expense_type) }
  it { should validate_presence_of(:amount) }

  it { should allow_mass_assignment_of(:store)}
  it { should allow_mass_assignment_of(:expense_type)}
  it { should allow_mass_assignment_of(:amount)}
end
