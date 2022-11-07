require 'rails_helper'

RSpec.describe CharityFacade do
  it 'can retrieve wildlife charities', :vcr do
    wildlife_charities = CharityFacade.top_wildlife

    expect(wildlife_charities).to be_a(Array)
  end

    it 'can retrieve animal charities', :vcr do
    animal_charities = CharityFacade.top_animal

    expect(animal_charities).to be_a(Array)
  end
end