require 'nokogiri'

module Hawker
  module Drivers
    class Default
      def initialize(response)
        @response = response
      end

      # The current page title
      #
      # @return [String]
      def page_title
        node_text html.at("head title")
      end

      private

      attr_reader :response

      def html
        @html ||= ::Nokogiri::HTML(response.body)
      end

      def node_text(node)
        return if node.nil?

        node.text.strip
      end
    end
  end
end
