# Rakefile

require 'rake/testtask'

# Task to run checkbox_test.rb
Rake::TestTask.new(:checkboxes) do |task|
  task.pattern = 'test/checkbox_test.rb'
end

# Task to run hover_test.rb
Rake::TestTask.new(:hovers) do |task|
  task.pattern = 'test/hover_test.rb'
end

# Default task to run all tests
task default: [:checkboxes, :hovers]
