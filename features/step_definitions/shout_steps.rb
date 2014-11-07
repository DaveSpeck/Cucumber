require 'shouty'

Given(/^that Lucy is (\d+) feet away from Sean$/) do |distance|
  @lucy = Person.new
  @sean = Person.new
  @lucy.location = distance
  @sean.location = 0
end

When(/^Sean shouts "(.*?)"$/) do |message|
  @sean.shouts(message)
  @seans_message = message
end

Then(/^Lucy does not hear Sean's shout$/) do
  if @lucy.last_heard_message == @seans_message
  	raise "Lucy heard Sean's message (but we expected her not to)"
  end
end
