require './setup'
require_relative 'test_helper'
require 'minitest/autorun'
require 'selenium-webdriver'
require_relative '../lib/pages/iframe_page'

class IframeTest < Minitest::Test
  def setup
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.get 'https://the-internet.herokuapp.com/iframe'
  end

  def teardown
    @driver.quit
  end

  def test_enter_text_and_make_bold
    iframe_page = IframePage.new(@driver)

    iframe_page.bold_formatting_button.click
    # Switch to the iframe
    @driver.switch_to.frame iframe_page.iframe

    # Locate the element with ID 'tinymce' inside the iframe
    textarea = iframe_page.textarea_body

    # Clear existing text (optional)
    textarea.clear

    # Enter text and make it bold
    textarea.send_keys 'This is a test text.'

    # Pause for a moment to visually inspect the changes (optional)
    sleep 2

    # Get the entered text from the element
    entered_text = textarea.text

    xpath = '//*[text()=\"\"]'
    text_element = @driver.find_element(xpath: "//*[text()=\'+entered_text+]")
    font_weight = text_element.css_value('font-weight')
    assert_operator font_weight.to_i, :>=, 700, 'Text is not bold'

    # Assertion: Check if the entered text contains the bold tag
    # assert_includes entered_text, '<strong>This is a test text.</strong>', 'Text is not bold'

    # Additional assertions or validations can be added as needed
  end
end
