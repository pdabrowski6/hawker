require 'rspec'
require 'hawker'
require 'helper'

describe Hawker::Drivers::Instagram do
  describe '#page_title' do
    it 'returns page title' do
      expect(driver.page_title).to eq('Mateusz M (@themateuszm) • Instagram photos and videos')
    end
  end

  describe '#biography' do
    it 'returns the current user biography' do
      expect(driver.biography).to eq('I want the world to be better because, I was here.')
    end
  end

  describe '#full_name' do
    it 'returns the current user full name' do
      expect(driver.full_name).to eq('Mateusz M')
    end
  end

  describe '#following' do
    it 'returns the number of accounts that the current user follows' do
      expect(driver.following).to eq(3)
    end
  end

  describe '#followers' do
    it 'returns the current user followers count' do
      expect(driver.followers).to eq(52137)
    end
  end

  describe '#external_url' do
    it 'returns the current user external URL' do
      expect(driver.external_url).to eq('http://bit.ly/2o2izbn')
    end
  end

  describe '#profile_pic_url' do
    it 'returns the current user profile picture URL' do
      expect(driver.profile_pic_url).to eq('http://url.com/image.jpg')
    end
  end

  describe '#username' do
    it 'returns the current user username' do
      expect(driver.username).to eq('themateuszm')
    end
  end

  def driver
    response = load_driver_fixture("instagram")

    Hawker::Drivers::Instagram.new(response)
  end
end
