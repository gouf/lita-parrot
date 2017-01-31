require 'slack-ruby-client'

module Lita
  module Handlers
    class Parrot < Handler
      route(/parrot/, :parrot)

      def parrot(response)
        user_name = find_user_name(response.user&.id) rescue ''
        response.reply "@#{user_name} #{response.message.body}"
      end

      def find_user_name(user_id)
        ::Slack.configure do |config|
          config.token = ENV['SLACK_API_TOKEN']
        end

        client = ::Slack::Web::Client.new
        user_info = client.users_info(user: user_id)
        user_info.dig(:user, :name)
      end

      Lita.register_handler(self)
    end
  end
end
