# spec/checkboxes_spec.rb

require_relative '../spec_helper'
require_relative '../pages/checkboxes_page'

describe 'Checkboxes Page' do
  before(:all) do
    @checkboxes_page = CheckboxesPage.new(@browser)
    @checkboxes_page.navigate_to

    sleep 5
  end

  it 'should check the first checkbox' do
    @checkboxes_page.checkbox1_element.set(true)
    expect(@checkboxes_page.checkbox1_checked?).to be true
  end

  it 'should uncheck the second checkbox' do
    @checkboxes_page.checkbox2_element.clear
    expect(@checkboxes_page.checkbox2_checked?).to be false
  end

  it 'should validate default checkbox states' do
    expect(@checkboxes_page.checkbox1_checked?).to be false
    expect(@checkboxes_page.checkbox2_checked?).to be true
  end

  it 'should check both checkboxes and validate states' do
    @checkboxes_page.checkbox1_element.set(true)
    @checkboxes_page.checkbox2_element.set(true)
    expect(@checkboxes_page.checkbox1_checked?).to be true
    expect(@checkboxes_page.checkbox2_checked?).to be true
  end

  it 'should uncheck both checkboxes and validate states' do
    @checkboxes_page.checkbox1_element.clear
    @checkboxes_page.checkbox2_element.clear
    expect(@checkboxes_page.checkbox1_checked?).to be false
    expect(@checkboxes_page.checkbox2_checked?).to be false
  end

  it 'should validate checkbox labels' do
    expect(@checkboxes_page.checkbox1_element.label).to eq('checkbox 1')
    expect(@checkboxes_page.checkbox2_element.label).to eq('checkbox 2')
  end
end
