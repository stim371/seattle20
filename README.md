# Seattle 2.0

## Gem Overview
This is a Ruby wrapper for the Seattle 2.0 API

## Company Overview
[Seattle 2.0](http://www.seattle20.com) was founded by Marcelo Calbucci as a resource for entrepreneurs and startups in Seattle. The site features news, blog posts, an events calendar and the Seattle Startup Index.

They created an API to allow users to pull:

* A list of upcoming events in the area
* The Seattle Startup Index (SSI)

The company is [being acquired by GeekWire](http://blog.calbucci.com/2011/12/seattle-20-from-humble-beginnings-to.html). The content is currently out of date due to the transition, but some of these services will be maintained.

## Methods
The API has two methods:

1. get_events
  * Parameters: (api keys are in square brackets)
    * Event Count => [count]
      * Default is 25 events
    * Start Date => [start]
    * End Date => [end]
    * Organization => [org]
2. get_ssi
  * Parameters:
    * Format => [format]
      * Default is xml
      * Options:
        * xml
        * csv
    * Month => [m]
      * Defaults to most recent month

## Examples

If you wanted to get the default list of events (25 events from all organizations in the most recent month), you would simply call

    Seattle20.events

If you wanted to only get the first 5 events for the organization NWEN:

    Seattle20.events{ :count => 5, :org => "nwen" }
    
If you want to see the most recent Seattle Startup Index:

    Seattle20.ssi
    
To see the February list in csv format:

    Seattle20.ssi{ :format = "csv", :month = "02" }
