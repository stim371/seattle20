require 'open-uri'
require 'net/http'

class Seattle20
  BASEURL = "http://www.seattle20.com/api/v1/"

  def initialize
  end
  
  def self.events
    short_url = BASEURL + "get_events.aspx"
    url = URI.encode(short_url)
    response = Net::HTTP.get_response(URI.parse(url))
    response.body
  end
  
  def self.ssi
    short_url = BASEURL + "get_ssi.aspx"
    url = URI.encode(short_url)
    response = Net::HTTP.get_response(URI.parse(url))
    response.body
  end
  
end