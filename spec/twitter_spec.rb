require 'spec_helper'

describe 'Twitter' do

  before(:all) do
    @consumer_key = ENV['TWITTER_CONSUMER_KEY']
    @consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
    @access_token = ENV['TWITTER_ACCESS_TOKEN']
    @access_token_secret = ENV['TWITTER_ACCESS_SECRET']
  end

  describe 'update' do
    it 'can send a message' do
      service_instance = service_instance('twitter')
      params = {
        'consumer_key' => @consumer_key,
        'consumer_secret' => @consumer_secret,
        'access_token' => @access_token,
        'access_token_secret' => @access_token_secret,
        'message' => 'posting with the twitter api! =D'
      }
      service_instance.test_action('update', params) do
        expect_return
      end
    end
  end
end
