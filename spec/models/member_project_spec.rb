require 'rails_helper'

RSpec.describe MemberProject, type: :model do
  describe 'associations' do
    it { should belong_to(:member) }
    it { should belong_to(:project) }
  end
end