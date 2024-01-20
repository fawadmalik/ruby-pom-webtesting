# Rakefile

require 'rake/testtask'

task default: [:test]

Rake::TestTask.new do |webtesttask|
  webtesttask.libs << 'spec'
  webtesttask.pattern = 'spec/**/*_spec.rb'
  webtesttask.verbose = true
  webtesttask.warning = true
end