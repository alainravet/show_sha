# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|

  s.name        = 'show_sha'
  s.version     = '0.0.1'
  s.date        = Time.now.utc.strftime("%Y-%m-%d")
  s.homepage    = "https://github.com/alainravet/show_sha"

  s.summary     = "add and link a web page to /sha that displays the deployed app code git SHA."
  s.description = "via a Rails Engine, this gem adds a route for /sha where it displays the deployed webapp code git SHA."

  s.authors     = ['Alain Ravet']
  s.email       = ['alain.ravet@gmail.com']

  s.platform    = Gem::Platform::RUBY

  %w().each do |gem|
    s.add_dependency gem
  end

  %w(capybara rails sqlite3).each do |gem|
    s.add_development_dependency gem
  end

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
