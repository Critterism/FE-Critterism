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

end
