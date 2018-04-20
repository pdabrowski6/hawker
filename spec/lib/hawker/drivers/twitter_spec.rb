require 'rspec'
require 'hawker'
require 'helper'

describe Hawker::Drivers::Github do
  describe '#page_title' do
    it 'returns page title' do
      expect(driver.page_title).to eq('Paweł Dąbrowski (@pdabrowski_k1) | Twitter')
    end
  end

  describe '#name' do
    it 'returns the current user name' do
      expect(driver.name).to eq('Paweł Dąbrowski')
    end
  end

  describe '#bio' do
    it 'returns the current user bio' do
      expect(driver.bio).to eq('Husband. Dad. Digital samurai. Ruby is my super power, I write about it at http://pdabrowski.com/blog/ ')
    end
  end

  describe '#location' do
    it 'returns the current user location' do
      expect(driver.location).to eq('Poland')
    end
  end

  describe '#website' do
    it 'returns the current user website' do
      expect(driver.website).to eq('http://pdabrowski.com/blog/')
    end
  end

  describe '#joined' do
    it 'returns the current user account creation date' do
      expect(driver.joined).to eq('6:41 AM - 7 Feb 2010')
    end
  end

  describe '#tweets' do
    it 'returns the current user tweets count' do
      expect(driver.tweets).to eq(78)
    end
  end

  describe '#followers' do
    it 'returns the current user followers count' do
      expect(driver.followers).to eq(61)
    end
  end

  describe '#following' do
    it 'returns the number of accounts that the current user follows' do
      expect(driver.following).to eq(0)
    end
  end

  describe '#likes' do
    it 'returns the current user likes count' do
      expect(driver.likes).to eq(33)
    end
  end

  describe '#lists' do
    it 'returns the current user lists count' do
      expect(driver.lists).to eq(0)
    end
  end

  def driver
    response = load_driver_fixture("twitter")

    Hawker::Drivers::Twitter.new(response)
  end
end
