# spec/spec_helper.rb

require 'rspec'
require 'page-object'
require 'selenium-webdriver'
require_relative '../test_helper'
require 'minitest/autorun'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before(:all) do
    @browser = Selenium::WebDriver.for :chrome
  end

  config.after(:all) do
    @browser.quit
  end
end