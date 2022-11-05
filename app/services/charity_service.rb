class CharityService
  def self.conn
    Faraday.new(url: 'https://critterism-be.herokuapp.com')
  end

  def self.wildlife_charity
    response = conn.get('/api/v1/charities/wildlife')
    parse(response)
  end

  def self.animal_charity
    response = conn.get('/api/v1/charities/animals')
    parse(response)
  end

  def self.charity(slug)
    response = conn.get('api/v1/charities/#{slug}')
    parse(response)
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end