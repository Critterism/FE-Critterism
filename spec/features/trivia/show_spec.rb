require 'rails_helper'

RSpec.describe 'Trivia Show Page', :vcr do
  let!(:user) { User.create(name: 'Greg', email: 'greg@fakemail.com', uid: '126', token: '015416') }
  it 'cannot access trivia without being logged in' do
    visit trivia_path

    expect(page).to have_content('You must be logged in!')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit trivia_path
    expect(current_path).to eq(trivium_path(user))
  end
end
