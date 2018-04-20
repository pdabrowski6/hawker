require 'rspec'
require 'hawker'

describe Hawker::Mapper do
  describe '.map' do
    it 'returns GitHub driver instance if GitHub page is detected' do
      response = double('response')
      url = "https://github.com/nickname"
      driver = instance_double(Hawker::Drivers::Github)
      allow(Hawker::Drivers::Github).to receive(:new).with(response).and_return(driver)

      expect(Hawker::Mapper.map(url, response)).to eq(driver)
    end

    it 'returns Instagram driver instance if Instagram page is detected' do
      response = double('response')
      url = "https://instagram.com/nickname"
      driver = instance_double(Hawker::Drivers::Instagram)
      allow(Hawker::Drivers::Instagram).to receive(:new).with(response).and_return(driver)

      expect(Hawker::Mapper.map(url, response)).to eq(driver)
    end

    it 'returns Twitter driver instance if Twitter page is detected' do
      response = double('response')
      url = "https://twitter.com/nickname"
      driver = instance_double(Hawker::Drivers::Twitter)
      allow(Hawker::Drivers::Twitter).to receive(:new).with(response).and_return(driver)

      expect(Hawker::Mapper.map(url, response)).to eq(driver)
    end

    it 'returns Default driver instance if supported page is not detected' do
      response = double('response')
      url = "https://notsuported.com/nickname"
      driver = instance_double(Hawker::Drivers::Default)
      allow(Hawker::Drivers::Default).to receive(:new).with(response).and_return(driver)

      expect(Hawker::Mapper.map(url, response)).to eq(driver)
    end
  end
end
