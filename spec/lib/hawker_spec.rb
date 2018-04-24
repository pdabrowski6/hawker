require 'rspec'
require 'hawker'

describe Hawker do
  describe '.drivers' do
    it 'returns available drivers list' do
      expect(Hawker.drivers).to eq(['GitHub', 'Twitter', 'Instagram', 'Vimeo', 'Default'])
    end
  end

  describe '.get' do
    it 'sends request' do
      url = 'http://url.com'
      response = double('response')
      allow(Hawker::Request).to receive(:call).with(url).and_return(response)
      driver = double('driver')
      allow(Hawker::Mapper).to receive(:map).with(url, response).and_return(driver)

      result = Hawker.get(url)

      expect(result).to eq(driver)
      expect(Hawker::Request).to have_received(:call).with(url).once
      expect(Hawker::Mapper).to have_received(:map).with(url, response).once
    end
  end
end
