require 'rails_helper'

RSpec.describe 'Index Page for Charities' do
  it 'shows list of wildlife charities' do
    visit charity_index_path

    expect(page).to have_content("Name:")
  end
end