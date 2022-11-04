class TriviaService
  class << self
    def conn 
      Faraday.new(url:  ENV['HEROKU_API_URL']) #connection to heroku (in application.yml)
      # Faraday.new(url: ENV['API_URL']) # connection to localhost (in application.yml)
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