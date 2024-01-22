require './setup'
require_relative '../lib/pages/hover_page'
require 'test/unit'
require_relative 'test_helper'

class HoverTest < Test::Unit::TestCase
  def setup
    @browser = Watir::Browser.new :chrome
    @browser.goto 'https://the-internet.herokuapp.com/hovers'
  end

  def test_hover_text
    hover_page = HoverPage.new(@browser)

    # Ensure that none of the three hover divs have empty text
    hover_page.hover_divs.each do |hover_div|
      assert_not_empty(hover_div.text, 'Hover div text should not be empty')
    end
  end

  def teardown
    @browser.close
  end
end