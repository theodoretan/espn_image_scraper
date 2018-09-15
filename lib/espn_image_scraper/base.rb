require 'httparty'

module ESPNImageScraper
  class << self
    BASE_ROUTE = 'http://www.espn.com'

    def up?
      ping == 200
    end

    def get(league:, route:)
      HTTParty.get("#{BASE_ROUTE}/#{league}/#{route}")
    end

    private

    def ping
      HTTParty.get(BASE_ROUTE).code
    end
  end
end
