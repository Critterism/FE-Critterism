require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:correct) }
    it { should validate_presence_of(:incorrect1) }
    it { should have_db_column(:incorrect2) }
    it { should have_db_column(:incorrect3) }
    it { should have_db_column(:answer_type) }
    it { should have_db_column(:game_id) }
  end

  describe 'relationships' do
    it { should belong_to(:game) }
  end
end
