class HoverPage
  def initialize(browser)
    @browser = browser
  end

  def hover_divs
    @browser.divs(class: 'figure')
  end
end