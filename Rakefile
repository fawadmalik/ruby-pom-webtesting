# Rakefile

require 'rake/testtask'

# Task to run checkbox_test.rb
Rake::TestTask.new(:checkboxes) do |task|
  task.pattern = 'test/checkbox_test.rb'
end

# Task to run hover_test.rb
Rake::TestTask.new(:disappearing) do |task|
  task.pattern = 'test/disappearing_test.rb'
end

Rake::TestTask.new(:iframe) do |task|
  task.pattern = 'test/iframe_test.rb'
end

# Default task to run all tests
task default: [:checkboxes, :disappearing, :iframe]
