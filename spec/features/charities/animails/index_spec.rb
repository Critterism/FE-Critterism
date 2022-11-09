require 'rails_helper'

RSpec.describe 'Animal Charities Index', :vcr do
  it 'has a button to choose animal charities' do
    visit charities_path
    expect(page).to have_button('Animal Charities')
    expect(page).to have_button('Wildlife Charities')

    click_button 'Animal Charities'

    expect(current_path).to eq('/charities/animals')
    expect(current_path).to eq(charities_animals_path)
    expect(page).to have_content('Animal Charities')
  end
end
