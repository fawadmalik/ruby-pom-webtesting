class DisappearingPage
  def initialize(browser)
    @browser = browser
  end

  def disappearing_divs
    @browser.divs(css: 'div.example li')
  end
end