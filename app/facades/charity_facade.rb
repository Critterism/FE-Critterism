class CharityFacade
  def self.top_wildlife
    json = CharityService.wildlife_charity
    json[:data].map do |data|
      Charity.new(data)
    end
  end

  def self.top_animal
    json = CharityService.animal_charity
    json[:data].map do |data|
      Charity.new(data)
    end
  end

  def self.single_charity(slug_or_ein)
    response = CharityService.charity(slug_or_ein)[:data]
    Charity.new(response)
  end
end
