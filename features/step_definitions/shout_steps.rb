require 'shouty'

Before do
  shoutbox = Shoutbox.new
  @sean = Person.new(shoutbox)
  @lucy = Person.new(shoutbox)
end


Given(/^that Lucy is (\d+) feet away from Sean$/) do |distance|
  @sean.location = 0
  @lucy.location = distance.to_i
end

When(/^Sean shouts "(.*?)"$/) do |message|
  @sean.shout(message)
  @seans_message = message
  puts @seans_message
end

Then(/^Lucy does not hear Sean's shout$/) do
  if @lucy.last_heard_message == @seans_message
  	raise "Lucy heard Sean's message (but we expected her not to)"
  end
end

Then(/^Lucy hears Sean's shout$/) do
  if @lucy.last_heard_message != @seans_message
  	raise "Lucy did not hear Sean's message (but we expect her to)"
  end
end

Then(/^Sean should not hear himself$/) do
  if @sean.last_heard_message == @seans_message
  	raise "Sean heard his own message (but we expected him not to)"
  end
end

