require 'open-uri'
require 'net/http'

class Seattle20
  BASEURL = "http://www.seattle20.com/api/v1/"
  
  def self.events(params={})
    short_url = BASEURL + "get_events.aspx"
    url = params.empty? ? short_url : short_url + "?" + params.map { |key,val| key.to_s + "=" + val.to_s }.join("&")
    response = Net::HTTP.get_response(URI.parse(URI.encode(url)))
    response.body
  end
  
  def self.ssi(params={})
    short_url = BASEURL + "get_ssi.aspx"
    url = params.empty? ? short_url : short_url + "?" + params.map { |key,val| key.to_s + "=" + val.to_s }.join("&")
    response = Net::HTTP.get_response(URI.parse(URI.encode(url)))
    response.body
  end
  
end