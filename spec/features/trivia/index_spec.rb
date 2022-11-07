require 'rails_helper'

RSpec.describe 'Trivia Game' do
  before(:each) do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google_oauth2] =
    OmniAuth::AuthHash.new({
       :provider => 'google',
       :uid => '11111',
       :info => {
         :email => 'jerry@fakemail.com',
         :first_name => 'Jerry'
       },
       :credentials => {
         :token => '4560'
       }
     })
     visit '/auth/google_oauth2'
  end

  context 'success' do
    it 'displays a link to play trivia to a signed in user' do

      expect(page).to have_link('Play')

      click_link 'Play'

      expect(current_path).to eq('/trivia')
      expect(page).to have_content('Question 1: ')
    end
  end
end
