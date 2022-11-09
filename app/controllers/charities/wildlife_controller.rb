class Charities::WildlifeController < ApplicationController
  def index
    @charities = CharityFacade.top_wildlife
  end
end
