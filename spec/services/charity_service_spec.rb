require 'rails_helper'

RSpec.describe CharityService do
  it 'displays wildlife charities', :vcr do
    parsed = CharityService.wildlife_charity

    expect(parsed).to be_a(Hash)
    expect(parsed).to have_key(:data)

    charity_data = parsed[:data][0]

    expect(charity_data[:attributes]).to have_key(:description)
    expect(charity_data[:attributes][:description]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:ein)
    expect(charity_data[:attributes][:ein]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:name)
    expect(charity_data[:attributes][:name]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:profile_url)
    expect(charity_data[:attributes][:profile_url]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:location)
    expect(charity_data[:attributes][:location]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:tags)
    expect(charity_data[:attributes][:tags]).to be_an(Array)
    expect(charity_data[:attributes][:tags][0]).to be_a(String)
  end

   it 'displays animal charities', :vcr do
    parsed = CharityService.animal_charity

    expect(parsed).to be_a(Hash)
    expect(parsed).to have_key(:data)

    charity_data = parsed[:data][0]

    expect(charity_data[:attributes]).to have_key(:description)
    expect(charity_data[:attributes][:description]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:ein)
    expect(charity_data[:attributes][:ein]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:name)
    expect(charity_data[:attributes][:name]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:profile_url)
    expect(charity_data[:attributes][:profile_url]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:location)
    expect(charity_data[:attributes][:location]).to be_a(String)

    expect(charity_data[:attributes]).to have_key(:tags)
    expect(charity_data[:attributes][:tags]).to be_an(Array)
    expect(charity_data[:attributes][:tags][0]).to be_a(String)
  end
end
