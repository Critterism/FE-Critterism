class CharityController < ApplicationController
  def index
    if params[:q] == 'animals'
      @charities = CharityFacade.top_animal
      @title = 'Animal Charities'
    elsif params[:q] == 'wildlife'
      @charities = CharityFacade.top_wildlife
      @title = 'Wildlife Charities'
    else
      @title = 'Error: you effed up!'
    end
  end

  def show
    @charity = CharityFacade.single_charity(params[:id])
  end
end
