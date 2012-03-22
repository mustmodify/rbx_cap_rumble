require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
require 'net/http'
require 'net/ssh'

Net::SSH.start('physioagereporting.com', 'jw') do |ssh|
  ssh.exec 'whoami'
end

