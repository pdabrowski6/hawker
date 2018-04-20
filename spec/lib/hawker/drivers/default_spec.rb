require 'rspec'
require 'hawker'
require 'helper'

describe Hawker::Drivers::Default do
  describe '#page_title' do
    it 'returns page title' do
      expect(driver.page_title).to eq('Default page')
    end
  end

  def driver
    response = load_driver_fixture("default")

    Hawker::Drivers::Default.new(response)
  end
end
