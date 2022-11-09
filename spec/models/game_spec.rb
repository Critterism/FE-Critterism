require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:difficulty) }
  end

  describe 'relationships' do
    it { should have_one(:answer) }
    it { should belong_to(:user) }
  end
end
