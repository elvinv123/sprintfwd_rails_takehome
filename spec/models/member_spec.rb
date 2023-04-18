require 'rails_helper'

RSpec.describe Member, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end

  describe 'associations' do
    it { should belong_to(:team) }
    it { should have_many(:member_projects) }
    it { should have_many(:projects).through(:member_projects) }
  end
end