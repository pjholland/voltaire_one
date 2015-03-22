$: << File.dirname(__FILE__)+'/../lib'

require "selenium-webdriver"
require "rspec"
require "cucumber"
require "require_all"
require 'selenium-webdriver'
#require 'rspec-expectations'
require_rel '../../lib/pages/homepage'
require_rel '../../lib/pages/storefinder'

ENV['base_url'] = 'http://contactcentre.nightly.fco.clients.wtg.co.uk/users/login'


After do
  at_exit { @browser.quit }
end
