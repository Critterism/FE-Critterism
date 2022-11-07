class Charity
  attr_reader :description,
              :ein,
              :id,
              :location,
              :logo,
              :name,
              :profile_url,
              :slug,
              :tags

  def initialize(data)
    @description = data[:attributes][:description]
    @ein = data[:attributes][:ein]
    @id = nil || data[:attributes][:id]
    @location = data[:attributes][:location]
    @logo = data[:attributes][:logo]
    @name = data[:attributes][:name]
    @profile_url = data[:attributes][:profile_url]
    @slug = data[:attributes][:slug]
    @tags = data[:attributes][:tags]
  end

  # def display_image
  #   charity = CharityFacade.top_wildlife
  #   "https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive"
  # end
end
