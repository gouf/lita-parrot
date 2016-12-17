require "spec_helper"

# In development environment, adjust redis host/port setting if you using docker or whatever
# Lita.configure do |config|
#   config.redis[:host] = '192.168.99.100'
#   config.redis[:port] = '6379'
# end

describe Lita::Handlers::Parrot, lita_handler: true do
  let(:source) { ::Lita::Source.new(user: user)   }
  let(:user) { ::Lita::User.create('1', name: 'foo')   }

  it 'response user name and recieved message' do
    send_message('echo foo bar')
    expect(replies.last).to match(/(bar)|(brabra)/)
  end
end
