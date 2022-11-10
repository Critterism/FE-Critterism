require 'rails_helper'

RSpec.describe 'Wildlife Charities Index', :vcr do
  it 'has a button to choose wildlife charities' do
    visit charities_path
    expect(page).to have_link('Animal Charities')
    expect(page).to have_link('Wildlife Charities')

    click_link 'Wildlife Charities'

    expect(current_path).to eq('/charities/wildlife')
    expect(current_path).to eq(charities_wildlife_path)
    expect(page).to have_content('Wildlife Charities')
  end
end
