require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  
  def initialize(url)
    @url = url
    end

  def get_response_body
    uri = URI.parse(@url)
    response = NET::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
  people = JSON.parse(self.get_response_body)
  people.collect{|people|people}
  end
end 
