require 'rails_helper'

RSpec.describe 'Charity Dashboard Index' do
  it 'has a button to choose animal charities' do
    visit charities_path
    expect(page).to have_button('Animal Charities')
    
    click_on 'Animal Charities'
    expect(current_path).to eq(charity_index_path)
    expect(page).to have_content('Animal Charities')
  end
  it 'has a button to choose wildlife charities' do
    visit charities_path
    expect(page).to have_button('Wildlife Charities')
    
    click_on 'Wildlife Charities'
    expect(current_path).to eq(charity_index_path)
    save_and_open_page
    expect(page).to have_content('Wildlife Charities')
  end
end