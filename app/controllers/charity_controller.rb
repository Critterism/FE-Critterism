class CharityController < ApplicationController
  def index
    @wildlife_charities = CharityFacade.top_wildlife
    @animal_charities = CharityFacade.top_animal
  end
end
