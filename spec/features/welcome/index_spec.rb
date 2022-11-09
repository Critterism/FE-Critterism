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

    expect(page).to have_link('Sign Up/Sign In with Google')

    click_link 'Sign Up/Sign In with Google'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Jerry')
    expect(page).to_not have_link('Sign Up/Sign In with Google')
    expect(page).to have_link('Log Out')
    expect(page).to have_link('Play')

    click_link 'Log Out'

    expect(current_path).to eq(root_path)
    expect(page).to_not have_link('Log Out')
    expect(page).to have_content('Logged Out')
    expect(page).to_not have_content('Jerry')
    expect(page).to have_link('Sign Up/Sign In with Google')
  end

  it 'has a navbar with several links' do
    visit root_path

    expect(page).to_not have_link('Home')
    expect(page).to have_link('Animals')
    expect(page).to have_link('Wildlife')
    expect(page).to have_link('Sunny - Chesapeake Bay Retriever Relief and Rescue')
    expect(page).to have_link('Nicole - Arizona Humane Society')
    expect(page).to have_link('Sterling - Rocky Mountain House Rabbit Rescue')
    expect(page).to have_link('Nikky - Save the Elephants')
    expect(page).to have_link('Taryn - The Bird Rescue Center')
    expect(page).to_not have_link('Log Out')

    click_link('Animals')

    expect(current_path).to eq(charities_animals_path)
    expect(page).to have_link('Home')

    click_link('Home')
    click_link('Wildlife')

    expect(current_path).to eq(charities_wildlife_path)

    # click_link('Home')
    # click_link('Sunny - Chesapeake Bay Retriever Relief and Rescue')
    #
    # expect(current_path).to eq('https://www.every.org/cbrrescue')
    #
    # visit root_path
    # click_link('Nicole - Arizona Humane Society')
    #
    # expect(current_path).to eq('https://www.every.org/azhumane')
    #
    # visit root_path
    # click_link('Sterling - Rocky Mountain House Rabbit Rescue')
    #
    # expect(current_path).to eq('https://www.rmhrr.org/')
    #
    # visit root_path
    # click_link('Nikky - Save the Elephants')
    #
    # expect(current_path).to eq('https://www.savetheelephants.org/')
    #
    # visit root_path
    # click_link('Taryn - The Bird Rescue Center')
    #
    # expect(current_path).to eq('https://q14.b9e.myftpupload.com/')
  end
end
