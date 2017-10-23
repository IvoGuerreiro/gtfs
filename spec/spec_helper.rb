require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'bundler/setup'
require 'rspec'
require 'vcr'
require 'gtfs'

require File.expand_path(File.dirname(__FILE__) + '/support/model_shared_examples')

VCR.configure do |c|
  c.cassette_library_dir = File.join(File.dirname(__FILE__), '/fixtures/cassettes')
  c.hook_into :webmock
  c.configure_rspec_metadata!
end
