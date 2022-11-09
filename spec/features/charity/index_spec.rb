require 'rails_helper'

RSpec.describe 'Index Page for Charities' do
  it 'shows list of wildlife charities' do
    visit charities_path

    click_button 'Wildlife Charities'

    expect(current_path).to eq(charities_wildlife_path)
    expect(page).to have_content("Name:")
  end

  it 'shows list of wildlife charities', :vcr do
    visit '/charities'

    click_button 'Wildlife Charities'

    expect(page).to have_content('Wildlife Charities')
    expect(page).to_not have_content('Animal Charities')

    expect(current_path).to eq(charities_wildlife_path)

    expect(page).to have_content('Fungi Foundation')
    expect(page).to have_button('More Info')
  end


  it 'shows list of animal charities', :vcr do
    visit '/charities'

    click_button 'Animal Charities'

    expect(page).to have_content('Animal Charities')
    expect(page).to_not have_content('Wildlife Charities')

    expect(current_path).to eq(charities_animals_path)

    expect(page).to have_content('Fungi Foundation')
    expect(page).to have_button('More Info')
  end
end
