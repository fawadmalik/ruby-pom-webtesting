# spec/hovers_spec.rb

require_relative '../spec_helper'
require_relative '../pages/hovers_page'

describe 'Hovers Page' do
  before(:all) do
    @hovers_page = HoversPage.new(@browser)
    @hovers_page.navigate_to
  end

  it 'should hover over the first user and validate displayed information' do
    @hovers_page.hover_over_user(1)
    expect(@hovers_page.user_info_displayed?(1)).to be true
  end

  it 'should hover over the second user and validate displayed information' do
    @hovers_page.hover_over_user(2)
    expect(@hovers_page.user_info_displayed?(2)).to be true
  end

  it 'should hover over the third user and validate displayed information' do
    @hovers_page.hover_over_user(3)
    expect(@hovers_page.user_info_displayed?(3)).to be true
  end

  it 'should click on the link of the first user and validate navigation' do
    @hovers_page.click_user_link(1)
    expect(@hovers_page.current_url).to include('user/1')
  end

  it 'should click on the link of the second user and validate navigation' do
    @hovers_page.click_user_link(2)
    expect(@hovers_page.current_url).to include('user/2')
  end

  it 'should click on the link of the third user and validate navigation' do
    @hovers_page.click_user_link(3)
    expect(@hovers_page.current_url).to include('user/3')
  end
end
