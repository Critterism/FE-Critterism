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
end
