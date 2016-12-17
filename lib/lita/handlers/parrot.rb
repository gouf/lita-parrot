module Lita
  module Handlers
    class Parrot < Handler
      route(/echo/, :parrot)
      route(/parrot/, :parrot)

      def parrot(response)
        response.replies response.user&.id
        response.reply "@#{response.message.source.user&.name} #{response.message.body}"
      end

      Lita.register_handler(self)
    end
  end
end
