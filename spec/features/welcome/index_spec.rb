require 'rails_helper'

RSpec.describe 'The Welcome Page' do
  before(:each) do
    OmniAuth.config.test_mode = true
  end

  it 'has links for sign in, sign up or logout' do
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

    visit root_path

    expect(page).to have_link('Home')
    expect(page).to have_link('Sign Up/Sign In with Google')

    click_link 'Sign Up/Sign In with Google'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Jerry')
    expect(page).to_not have_link('Sign Up/Sign In with Google')
    expect(page).to have_link('Log Out')

    click_link 'Log Out'

    expect(current_path).to eq(root_path)
    expect(page).to_not have_link('Log Out')
    expect(page).to have_content('Logged Out')
    expect(page).to_not have_content('Jerry')
    expect(page).to have_link('Sign Up/Sign In with Google')
  end
end
