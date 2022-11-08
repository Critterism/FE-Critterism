require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:correct) }
    it { should validate_presence_of(:incorrect1) }
    it { should validate_presence_of(:incorrect2) }
    it { should validate_presence_of(:incorrect3) }
    it { should validate_presence_of(:answer_type) }
  end

  describe 'relationships' do
    it { should belong_to(:game) }
  end
end
