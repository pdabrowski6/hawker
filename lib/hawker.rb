require 'hawker/request'
require 'hawker/drivers/default'
require 'hawker/drivers/github'
require 'hawker/drivers/instagram'
require 'hawker/drivers/twitter'
require 'hawker/drivers/medium'
require 'hawker/mapper'

module Hawker
  # Returns the driver instance mapped to the given URL
  #
  # @return [Object]
  def self.get(url)
    response = Hawker::Request.call(url)

    Hawker::Mapper.map(url, response)
  end

  # The list of available drivers
  #
  # @return [Array<String>]
  def self.drivers
    [
      "GitHub",
      "Twitter",
      "Instagram",
      "Medium",
      "Default"
    ]
  end
end
