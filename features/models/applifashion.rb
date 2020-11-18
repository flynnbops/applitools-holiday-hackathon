# frozen_string_literal: true

require_relative('generic_page')

# Page object model for the Applifashion site
class Applifashion < GenericPage
  def initialize
    @url = APPLIFASHION
    @page_check = 'HOME'
    @filter_black = 'colors__Black'
    @filter_button = 'filterBtn'
  end

  # ---- Common Page Object Model (POM) methods ----
  def visit
    Capybara.visit(@url)
    self
  end

  def displayed?
    expect(page).to have_content(@page_check)
    self
  end

  # Will check the filter for the colour black.
  def filter_colour_black
    check @filter_black, visible: false
    click_button(@filter_button)
  end
end
