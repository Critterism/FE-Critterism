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
    @logo = data[:attributes][:logoUrl]
    @name = data[:attributes][:name]
    @profile_url = data[:attributes][:profileUrl]
    @slug = data[:attributes][:slug]
    @tags = data[:attributes][:tags]
  end
end
