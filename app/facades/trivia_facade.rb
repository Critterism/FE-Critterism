class TriviaFacade
  class << self
    def create_trivia
      json = TriviaService.get_trivia_data
      json[:data].map do |data|
        Trivia.new(data)
      end
    end
  end
end
