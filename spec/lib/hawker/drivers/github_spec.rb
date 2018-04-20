require 'rspec'
require 'hawker'
require 'helper'

describe Hawker::Drivers::Github do
  describe '#page_title' do
    it 'returns page title' do
      expect(driver.page_title).to eq('rubyhero (John Doe) · GitHub')
    end
  end

  describe '#name' do
    it 'returns user name' do
      expect(driver.name).to eq('John Doe')
    end
  end

  describe '#username' do
    it 'returns nickname' do
      expect(driver.username).to eq('rubyhero')
    end
  end

  describe '#company' do
    it 'returns company' do
      expect(driver.company).to eq('Company')
    end
  end

  describe '#location' do
    it 'returns location' do
      expect(driver.location).to eq('Poland')
    end
  end

  describe '#website' do
    it 'returns website' do
      expect(driver.website).to eq('http://pdabrowski.com/blog/')
    end
  end

  describe '#repositories' do
    it 'returns user repositories count' do
      expect(driver.repositories).to eq(1)
    end
  end

  describe '#stars' do
    it 'returns stars' do
      expect(driver.stars).to eq(0)
    end
  end

  describe '#following' do
    it 'returns following count' do
      expect(driver.following).to eq(1)
    end
  end

  describe '#followers' do
    it 'returns followers count' do
      expect(driver.followers).to eq(6)
    end
  end

  def driver
    response = load_driver_fixture("github")

    Hawker::Drivers::Github.new(response)
  end
end
