require 'spec_helper'

describe 'portfolio', type: :feature do

  before do
    visit '/'
    click_link 'Portfolio'
    save_and_open_page
  end

  it 'renders footer partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'Built using the awesome Middleman framework'
    end
  end

  it 'displays project list' do
    expect(page).to have_css '#projects'
    within '#projects' do
      expect(page).to have_content 'My First Website'
      expect(page).to have_link 'https://github.com/tochman/tochman.github.io'
      expect(page).to have_content 'FizzBuzz'
      expect(page).to have_link 'https://github.com/tochman/fizz_buzz'
      save_and_open_page

    end
  end
end