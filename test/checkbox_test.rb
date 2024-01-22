require './setup'
require_relative '../lib/pages/checkbox_page'
require 'test/unit'
require_relative 'test_helper'

class CheckboxTest < Test::Unit::TestCase
  def setup
    @browser = Watir::Browser.new :chrome
    @browser.goto 'https://the-internet.herokuapp.com/checkboxes'
  end

  def test_checkbox_states
    checkboxes_page = CheckboxPage.new(@browser)

    # Get the current state of each checkbox and print it
    checkbox1_state = checkboxes_page.checkbox1.checked?
    checkbox2_state = checkboxes_page.checkbox2.checked?

    puts "Checkbox 1: #{checkbox1_state ? 'checked' : 'unchecked'}"
    puts "Checkbox 2: #{checkbox2_state ? 'checked' : 'unchecked'}"

    # Assert that both checkboxes have opposite states
    assert_not_equal(checkbox1_state, checkbox2_state, 'Checkboxes should have opposite states')
  end

  def teardown
    @browser.close
  end
end