class TriviaService
  class << self
    def conn
      Faraday.new(url: 'https://critterism-be.herokuapp.com')
    end

    def json_response(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_trivia_data
      response = conn.get('/api/v1/trivia')
      json_response(response)
    end
  end
end
