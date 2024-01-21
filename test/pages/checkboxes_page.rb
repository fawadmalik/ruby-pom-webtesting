# pages/checkboxes_page.rb

class CheckboxesPage
  include PageObject

  page_url 'https://the-internet.herokuapp.com/checkboxes'

  checkbox(:checkbox1, id: 'checkboxes[1]')
  checkbox(:checkbox2, id: 'checkboxes[2]')
end