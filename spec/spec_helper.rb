require 'ruby_odata'
require 'webmock/rspec'
require 'coveralls'
Coveralls.wear_merged!

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |f| require f }