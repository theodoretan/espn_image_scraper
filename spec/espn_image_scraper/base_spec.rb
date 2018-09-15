require 'spec_helper'

RSpec.describe ESPNImageScraper do
  describe '.up?' do
    it 'returns true if the ESPN is running' do
      allow(ESPNImageScraper).to receive(:ping).and_return(200)
      expect(ESPNImageScraper.up?).to eq(true)
    end

    it 'returns false if the ESPN is not running' do
      allow(ESPNImageScraper).to receive(:ping).and_return(500)
      expect(ESPNImageScraper.up?).to eq(false)
    end
  end

  describe '.get' do
    it 'returns a HTTParty response' do
      expect(ESPNImageScraper.get(league: 'nba', route: 'teams')).to be_a(HTTParty::Response)
    end
  end
end
