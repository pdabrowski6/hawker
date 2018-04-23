require 'rspec'
require 'hawker'
require 'helper'

describe Hawker::Drivers::Medium do
  describe '#page_title' do
    it 'returns page title' do
      expect(driver.page_title).to eq('Paweł Dąbrowski – Medium')
    end
  end

  describe '#name' do
    it 'returns the current user name' do
      expect(driver.name).to eq('Paweł Dąbrowski')
    end
  end

  describe '#username' do
    it 'returns the current user username' do
      expect(driver.username).to eq('pdabrowski1')
    end
  end

  describe '#followers' do
    it 'returns the current user followers' do
      expect(driver.followers).to eq(6)
    end
  end

  describe '#following' do
    it 'returns the number of accouns that the current user follows' do
      expect(driver.following).to eq(2)
    end
  end

  describe '#bio' do
    it 'returns the current user bio' do
      expect(driver.bio).to eq('Writer of the digital age. Writing for the human beings & computers. Publishing tech stuff at http://pdabrowski.com/blog')
    end
  end

  describe '#posts_count' do
    it 'returns count of the current user posts' do
      expect(driver.posts_count).to eq(7)
    end
  end

  def driver
    response = load_driver_fixture("medium")

    Hawker::Drivers::Medium.new(response)
  end
end
