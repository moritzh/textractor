require 'bundler/setup'
Bundler.setup

require '../textractor' # and any other gems you need
require 'simplecov'
SimpleCov.start 'rails'
RSpec.configure do |config|
  # some (optional) config here
end