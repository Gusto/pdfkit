# frozen_string_literal: true

SPEC_ROOT = File.dirname(__FILE__)
$LOAD_PATH.unshift(SPEC_ROOT)
$LOAD_PATH.unshift(File.join(SPEC_ROOT, '..', 'lib'))
require 'simplecov'
SimpleCov.start do
  add_filter 'spec/'
end

Warning[:deprecated] = true if defined?(Warning.[]=)

require 'pdfkit'
require 'rspec'
require 'mocha'
require 'rack'
require 'rack/test'
require 'active_support'
require 'custom_wkhtmltopdf_path' if File.exist?(File.join(SPEC_ROOT, 'custom_wkhtmltopdf_path.rb'))

RSpec.configure do |config|
  include Rack::Test::Methods
end
