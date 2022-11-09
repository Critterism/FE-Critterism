class CharitiesController < ApplicationController
  def index

  end

  def show
    @charity = CharityFacade.single_charity(params[:id])
  end
end
