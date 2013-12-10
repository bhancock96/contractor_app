require 'spec_helper'

describe Expense do
  it { should belong_to(:job)}
  it { should belong_to(:contractor)}

  it { should validate_presence_of(:store) }
  it { should validate_presence_of(:expense_type) }
  it { should validate_presence_of(:amount) }

  it { should allow_mass_assignment_of(:store)}
  it { should allow_mass_assignment_of(:expense_type)}
  it { should allow_mass_assignment_of(:amount)}

  it "should create an array of all job expenses" do
  	@job = FactoryGirl.build_stubbed(:job)
  	@expenses == 4.times{ FactoryGirl.create(:expense, job_id: @job.id) }
  	@job.job_expenses.should eq([21.21, 21.21, 21.21, 21.21])
  end
end
