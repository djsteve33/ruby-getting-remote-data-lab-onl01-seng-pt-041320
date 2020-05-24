require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  
  def initialize(people, URL)
    @people = people
    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    end

  def get_response_body
    uri = URI.parse(URL)
    response = NET::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
  people = JSON.parse(self.get_response_body)
  people.collect{|people|people["name"]}
  end
end 
