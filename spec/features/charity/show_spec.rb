require 'rails_helper'
RSpec.describe 'Charity show page' do
  before(:each) do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google_oauth2] =
    OmniAuth::AuthHash.new({:provider => 'google',
                            :uid => '123456',
                            :info => {
                              :email => 'email@gmail.com',
                              :first_name => 'BOB'
                            },
                            :credentials => {
                              :token => '222'
                            }
                          })
  end
  it 'has a charity show page' do
    visit root_path
    click_on 'Sign Up/Sign In with Google'
    visit charities_path
    click_on 'Animal Charities'
    click_on 'Animal Ethics'
    expect(current_path).to eq(charity_path(461062870))
    expect(page).to have_content("Purpose:")
    expect(page).to have_content("Location:")
    expect(page).to have_content("Visit their Website to donate!")
  end
end