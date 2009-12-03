require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "rtunes"
    gemspec.summary = "Control iTunes remotely using Ruby OSA calls."
    gemspec.description = "Control iTunes remotely using Ruby OSA calls."
    gemspec.email = "contact@adeptware.com"
    gemspec.homepage = "http://github.com/adeptware/rtunes"
    gemspec.authors = ["Adeptware"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }