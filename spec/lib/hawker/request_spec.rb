require 'rspec'
require 'hawker'

describe Hawker::Request do
  describe '.call' do
    it 'performs request' do
      url = 'http://url.com'
      response = double('response')
      allow(RestClient).to receive(:get).with(url, user_agent: 'Mozilla/5.0 Mac OS').and_return(response)

      result = Hawker::Request.call(url)

      expect(result).to eq(response)
      expect(RestClient).to have_received(:get).with(url, user_agent: 'Mozilla/5.0 Mac OS').once
    end
  end
end
