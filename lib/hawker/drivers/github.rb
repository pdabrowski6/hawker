module Hawker
  module Drivers
    class Github < Hawker::Drivers::Default

      # The current user full name
      #
      # @return [String]
      def name
        node_text html.at("h1.vcard-names span.vcard-fullname[itemprop='name']")
      end

      # The current user nickname
      #
      # @return [String]
      def username
        node_text html.at("h1.vcard-names span.vcard-username[itemprop='additionalName']")
      end

      # The current user company
      #
      # @return [String]
      def company
        node_text html.at("li[itemprop='worksFor'] div")
      end

      # The current user location
      #
      # @return [String]
      def location
        node_text html.at("li[itemprop='homeLocation'] span")
      end

      # The current user website
      #
      # @return [String]
      def website
        node = html.at("li[itemprop='url'] a")
        node[:href] unless node.nil?
      end

      # The count of repositiories owned by the current user
      #
      # @return [Integer]
      def repositories
        node_text(html.at("a[title='Repositories'] span.Counter")).to_i
      end

      # The count of stars that the current user gave
      #
      # @return [Integer]
      def stars
        node_text(html.at("a[title='Stars'] span.Counter")).to_i
      end

      # The count of users following the current user
      #
      # @return [Integer]
      def followers
        node_text(html.at("a[title='Followers'] span.Counter")).to_i
      end

      # The count of users that the current user is following
      #
      # @return [Integer]
      def following
        node_text(html.at("a[title='Following'] span.Counter")).to_i
      end

    end
  end
end
