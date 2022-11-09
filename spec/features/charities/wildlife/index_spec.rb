require 'rails_helper'

RSpec.describe 'Wildlife Charities Index', :vcr do
  it 'has a button to choose wildlife charities' do
    visit charities_path
    expect(page).to have_button('Animal Charities')
    expect(page).to have_button('Wildlife Charities')

    click_button 'Wildlife Charities'

    expect(current_path).to eq('/charities/wildlife')
    expect(current_path).to eq(charities_wildlife_path)
    expect(page).to have_content('Wildlife Charities')
  end
end
