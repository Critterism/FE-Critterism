require 'rails_helper'
RSpec.describe 'Charity show page' do
  it 'has a charity show page' do
    visit charity_index_path
    click_on 'Animal Charities'
    click_on 'Animal Ethics'

    expect(current_path).to eq(charity_path)
    expect(page).to have_content("Purpose:")
    expect(page).to have_content("Location:")
    expect(page).to have_content("Visit their Website to donate!")
  end
end