class CharityController < ApplicationController
  def index
    @wildlife_charities = CharityFacade.top_wildlife
    # require 'pry'
    # binding.pry
  end
end
