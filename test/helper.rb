require 'rubygems'
require 'bundler'
require 'mechanize'
require 'image_size'
require 'uri'
require 'json'
require 'open-uri'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'minitest/spec'
require 'minitest/unit'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'url-fetcher'

class MiniTest::Unit::TestCase
end

MiniTest::Unit.autorun
