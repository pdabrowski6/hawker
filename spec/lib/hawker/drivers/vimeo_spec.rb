require 'rspec'
require 'hawker'
require 'helper'

describe Hawker::Drivers::Github do
  describe '#page_title' do
    it 'returns page title' do
      expect(driver.page_title).to eq('Paweł Dąbrowski on Vimeo')
    end
  end

  describe '#name' do
    it 'returns the current user name' do
      expect(driver.name).to eq('onthewayto30')
    end
  end

  describe '#display_name' do
    it 'returns the current user display name' do
      expect(driver.display_name).to eq('Paweł Dąbrowski')
    end
  end

  describe '#bio' do
    it 'returns the current user bio' do
      expect(driver.bio).to eq('<p class="first">Short bio</p>')
    end
  end

  describe '#join_date' do
    it 'returns the current user join date' do
      expect(driver.join_date).to eq('2017-04-05 03:09:13')
    end
  end

  describe '#followers' do
    it 'returns the current user followers count' do
      expect(driver.followers).to eq(0)
    end
  end

  describe '#videos' do
    it 'returns the current user videos count' do
      expect(driver.videos).to eq(0)
    end
  end

  describe '#likes' do
    it 'returns the current user likes count' do
      expect(driver.likes).to eq(0)
    end
  end

  def driver
    response = load_driver_fixture("vimeo")

    Hawker::Drivers::Vimeo.new(response)
  end
end
