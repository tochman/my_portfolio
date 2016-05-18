require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'says Hello to Thomas with a h1 tag' do
    expect(page).to have_selector 'header.hero'
    within 'header.hero' do
      expect(page).to have_content 'Thomas Ochman'
    end
  end

  it 'displays Site title' do
    expect(page).to have_css '.menu-text'
    within '.menu-text' do
      expect(page).to have_content 'My Portfolio'
    end
  end



  it 'renders footer partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'Built using the awesome Middleman framework'
    end
  end


end