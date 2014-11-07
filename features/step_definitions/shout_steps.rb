require 'shouty'

Given(/^that Lucy is (\d+) feet away from Sean$/) do |distance|
  @lucy = Person.new
  @sean = Person.new
  @lucy.location = distance
  @sean.location = 0
end

When(/^Sean shouts "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^Lucy does not hear Sean's shout$/) do
  pending # express the regexp above with the code you wish you had
end
