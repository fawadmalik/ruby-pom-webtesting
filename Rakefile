# Rakefile

require 'rake/testtask'

task default: :test

Rake::TestTask.new do |webtesttask|
  webtesttask.libs << 'spec'
  webtesttask.test_files = FileList['test/**/*_test.rb']
end



