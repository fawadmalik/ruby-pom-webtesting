# spec/disappearing_elements_spec.rb

require_relative '../spec_helper'
require_relative '../pages/disappearing_elements_page'

describe 'Disappearing Elements Page' do
  before(:all) do
    @disappearing_elements_page = DisappearingElementsPage.new(@browser)
    @disappearing_elements_page.navigate_to
  end

  it 'should validate the presence of initially visible elements' do
    expect(@disappearing_elements_page.element_visible?(:link, 'Home')).to be true
    expect(@disappearing_elements_page.element_visible?(:link, 'About')).to be true
    expect(@disappearing_elements_page.element_visible?(:link, 'Contact Us')).to be true
  end

  it 'should navigate to Home and validate presence' do
    @disappearing_elements_page.goto_home
    expect(@disappearing_elements_page.element_visible?(:link, 'Home')).to be true
  end

  it 'should navigate to About and validate presence' do
    @disappearing_elements_page.goto_about
    expect(@disappearing_elements_page.element_visible?(:link, 'About')).to be true
  end

  it 'should navigate to Contact Us and validate presence' do
    @disappearing_elements_page.goto_contact_us
    expect(@disappearing_elements_page.element_visible?(:link, 'Contact Us')).to be true
  end

  it 'should navigate back to Home and validate presence' do
    @disappearing_elements_page.goto_home
    expect(@disappearing_elements_page.element_visible?(:link, 'Home')).to be true
  end
end
