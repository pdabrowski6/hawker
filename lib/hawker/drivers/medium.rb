require 'json'

module Hawker
  module Drivers
    class Medium < Hawker::Drivers::Default

      # The current user posts count
      #
      # @return [Integer]
      def posts_count
        json["userMeta"]["numberOfPostsPublished"]
      end

      # The current user name
      #
      # @return [String]
      def name
        json["user"]["name"]
      end

      # The current user username
      #
      # @return [String]
      def username
        json["user"]["username"]
      end

      # The current user biography
      #
      # @return [String]
      def bio
        json["user"]["bio"]
      end

      # The current user followers count
      #
      # @return [Integer]
      def followers
        social_stats_json["usersFollowedByCount"]
      end

      # The number of accounts that the current user follows
      #
      # @return [Integer]
      def following
        social_stats_json["usersFollowedCount"]
      end

      private

      def json
        @json ||= begin
          raw_json = html.to_s.match(/(?=window\["obvInit"\]\().*(?=\))/).to_s.gsub(/window\["obvInit"\]\(/, "")
          JSON.parse(raw_json)
        end
      end

      def social_stats_json
        @social_stats_json ||= begin
          uid = json["references"]["SocialStats"].keys.first
          json["references"]["SocialStats"][uid]
        end
      end
    end
  end
end
