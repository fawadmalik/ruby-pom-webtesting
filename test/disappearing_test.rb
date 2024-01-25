require './setup'
require_relative '../lib/pages/disappearing_page'
require 'test/unit'
require_relative 'test_helper'

class DisappearingTest < Test::Unit::TestCase
  def setup
    @browser = Watir::Browser.new :chrome
    @browser.goto 'https://the-internet.herokuapp.com/disappearing_elements'
  end

  def test_disappearing_divs
    disappearing_page = DisappearingPage.new(@browser)

    # Get the initial count of elements
    initial_count = @browser.elements(css: 'div.example li').count
    puts "Initial count of elements: #{initial_count}"

    # Refresh the page until the count of elements changes or until 10 refreshes
    refresh_count = 0
    loop do
      @browser.refresh
      refresh_count += 1

      current_count = @browser.elements(css: 'div.example li').count
      puts "Refresh ##{refresh_count} - Current count of elements: #{current_count}"

      break if current_count != initial_count || refresh_count >= 10
    end

    # Assert that the number of refreshes is less than 10
    assert_true(refresh_count < 10, 'Number of refreshes is not less than 10')

  end

  def teardown
    @browser.close
  end
end