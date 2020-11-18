# frozen_string_literal: true

Given('I am on the Applifashion homepage') do
  @site = Applifashion.new.visit.displayed?
end

Then('the homepage looks correct') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I filter products by colour black') do
  @site.filter_colour_black
end

Then('the filtered results page looks correct') do
  pending # Write code here that turns the phrase above into concrete actions
end
