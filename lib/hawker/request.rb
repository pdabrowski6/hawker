require 'rest-client'

module Hawker
  class Request

    # Performs the request to the given URL in order to get the page html
    #
    # @return [RestClient::Response]
    def self.call(url)
      ::RestClient.get(url, user_agent: 'Mozilla/5.0 Mac OS')
    end
  end
end
