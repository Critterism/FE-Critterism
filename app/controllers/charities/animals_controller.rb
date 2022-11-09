class Charities::AnimalsController < ApplicationController
  def index
    @charities = CharityFacade.top_animal
  end
end
