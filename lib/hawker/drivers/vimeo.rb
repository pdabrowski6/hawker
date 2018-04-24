module Hawker
  module Drivers
    class Vimeo < Hawker::Drivers::Default

      # The current user name
      #
      # @return [String]
      def name
        user_json["name"]
      end

      # The current user display name
      #
      # @return [String]
      def display_name
        user_json["display_name"]
      end

      # The current user biography
      #
      # @return [String]
      def bio
        user_json["bio"]["full"]
      end

      # The current user join date
      #
      # @return [String]
      def join_date
        user_json["join_date"]["raw"]
      end

      # The current user followers count
      #
      # @return [Integer]
      def followers
        user_json["stats"]["followers"].to_i
      end

      # The current user uploaded videos count
      #
      # @return [Integer]
      def videos
        user_json["stats"]["videos"].to_i
      end

      # The current user likes count
      #
      # @return [Integer]
      def likes
        user_json["stats"]["likes"].to_i
      end

      private

      def json
        @json ||= begin
          raw_json = html.to_s.match(/\{"profile".*/).to_s.gsub(");", "")
          JSON.parse(raw_json)
        end
      end

      def user_json
        @user_json ||= json["profile"]["app_config"]["user"]
      end
    end
  end
end
