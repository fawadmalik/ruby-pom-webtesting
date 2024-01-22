# test/test_helper.rb

require 'minitest/reporters'

html_reporter = Minitest::Reporters::HtmlReporter.new
Minitest::Reporters.use! [html_reporter]