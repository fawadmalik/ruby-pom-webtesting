
class IframePage
  def initialize(driver)
    @driver = driver
  end

  def iframe
     @driver.find_element(id: 'mce_0_ifr')
  end

  def textarea_body
    @driver.find_element(id: 'tinymce')
  end

  def bold_formatting_button
    @driver.find_element(xpath: '//button[@title="Bold"]')
  end
end