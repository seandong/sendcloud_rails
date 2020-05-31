require 'rest_client'

module Sendcloud
  class Client
    attr_reader :api_url

    def initialize(api_url)
      @api_url = api_url
    end

    def send_message(payload)
      RestClient::Request.new(url: sendcloud_url, method: :post, payload: payload, verify_ssl: OpenSSL::SSL::VERIFY_NONE)
    end

    def sendcloud_url
      @api_url
    end
  end
end
