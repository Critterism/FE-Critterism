require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:type) }
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:difficulty) }
  end

  describe 'relationships' do
    it { should have_many(:answers) }
  end
end
