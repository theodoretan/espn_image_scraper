# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "espn_image_scraper/version"

Gem::Specification.new do |gem|
  gem.name          = "espn_image_scraper"
  gem.authors       = ["Theodore Tan"]
  gem.email         = ["hi@theodoretan.com"]
  gem.version       = ESPNImageScraper::VERSION

  gem.summary       = %q{ESPNImageScraper - Team logos from ESPN}
  gem.description   = %q{ESPNImageScraper takes logos of teams off of ESPN to use in your app}
  gem.homepage      = "https://github.com/theodoretan/espn_image_scraper"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.bindir        = "bin"
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "httparty", "~> 0.16.1"
  gem.add_runtime_dependency "nokogiri", "~> 1.8.2"

  gem.add_development_dependency "bundler", "~> 1.16"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rspec", "~> 3.2"
  gem.add_development_dependency "pry", "~> 0.10.4"
  gem.add_development_dependency "coveralls", "~> 0.8.15"
end
