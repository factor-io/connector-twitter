require 'factor-connector-api'
require 'twitter'

Factor::Connector.service 'twitter' do
  action 'update' do |params|
    consumer_key          = params['consumer_key']
    consumer_secret       = params['consumer_secret']
    access_token          = params['access_token']
    access_token_secret   = params['access_token_secret']
    message               = params['message']

    fail 'Consumer Key is required' unless consumer_key
    fail 'Consumer Secret is required' unless consumer_secret
    fail 'Access Token is required' unless access_token
    fail 'Access Token Secret is required' unless access_token_secret

    info "Connecting to Twitter"
    begin
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = consumer_key
        config.consumer_secret     = consumer_secret
        config.access_token        = access_token
        config.access_token_secret = access_token_secret
      end
    rescue => ex
      fail "something happened, #{ex}"
    end

    info "Posting you message"
    begin
      response = client.update(message)
    rescue => ex
      fail "something happened, #{ex}"
    end

    action_callback response
  end
end
