require 'rails_helper'

RSpec.describe 'Index Page for Charities' do
  it 'shows list of wildlife charities' do
    visit charities_path
    click_on 'Wildlife Charities'
    expect(current_path).to eq(charity_index_path)
    expect(page).to have_content("Name:")
  end
end