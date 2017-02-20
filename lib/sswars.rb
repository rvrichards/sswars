require "./lib/sswars/version"
require "httparty"

module Sswars
  include HTTParty
  base_uri "http://swapi.co/api/"
  # base_uri "animatedgif.me"

  # Class method
  def self.find_name(id)   
    get_name get("/people/#{id}")
    # get("/people/#{id}").parsed_response["name"]
  end

  def self.find_planet(id)   
    # get("/planets/#{id}").parsed_response["name"]
    get_name get("/planets/#{id}")
  end

  private
    def self.get_name(response)
      response.parsed_response["name"]
    end
end
