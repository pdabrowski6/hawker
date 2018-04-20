module Hawker
  module Drivers
    class Twitter < Hawker::Drivers::Default

      # The current user name
      #
      # @return [String]
      def name
        node_text(html.at("h1.ProfileHeaderCard-name a"))
      end

      # The current user biography note
      #
      # @return [String]
      def bio
        node_text(html.at("p.ProfileHeaderCard-bio"))
      end

      # The current user location
      #
      # @return [String]
      def location
        node_text(html.at("span.ProfileHeaderCard-locationText"))
      end

      # The current user website
      #
      # @return [String]
      def website
        node = html.at("span.ProfileHeaderCard-urlText a")
        node[:title] if !node.nil?
      end

      # The current user account creation date
      #
      # @return [String]
      def joined
        html.at("span.ProfileHeaderCard-joinDateText")[:title]
      end

      # The current user tweets count
      #
      # @return [Integer]
      def tweets
        node = html.at("a[data-nav='tweets'] span.ProfileNav-value")
        node.nil? ? 0 : node["data-count"].to_i
      end

      # The current user followers count
      #
      # @return [Integer]
      def followers
        node = html.at("li.ProfileNav-item--followers span.ProfileNav-value")
        node.nil? ? 0 : node["data-count"].to_i
      end

      # The count of accounts that the current user follows
      #
      # @return [Integer]
      def following
        node = html.at("li.ProfileNav-item--following span.ProfileNav-value")
        node.nil? ? 0 : node["data-count"].to_i
      end

      # The current user likes count
      #
      # @return [Integer]
      def likes
        node = html.at("li.ProfileNav-item.ProfileNav-item--favorites span.ProfileNav-value")
        node.nil? ? 0 : node["data-count"].to_i
      end

      # The current user lists count
      #
      # @return [Integer]
      def lists
        node_text(html.at("li.ProfileNav-item.ProfileNav-item--lists span.ProfileNav-value")).to_i
      end

    end
  end
end
