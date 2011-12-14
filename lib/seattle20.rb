require 'open-uri'
require 'net/http'

class Seattle20
  BASEURL = "http://www.seattle20.com/api/v1/"
  url_end = ""
  
  def self.events(params={})
    short_url = BASEURL + "get_events.aspx"
    params.empty? ? url = short_url : url = short_url + "?" + params.map { |key,val| key.to_s + "=" + val.to_s }.join("&")
    url = URI.encode(short_url)
    response = Net::HTTP.get_response(URI.parse(url))
    response.body
  end
  
  def self.ssi(params={})
    short_url = BASEURL + "get_ssi.aspx"
    params.empty? ? url = short_url : url = short_url + "?" + params.map { |key,val| key.to_s + "=" + val.to_s }.join("&")
    url = URI.encode(short_url)
    response = Net::HTTP.get_response(URI.parse(url))
    response.body
  end
  
end