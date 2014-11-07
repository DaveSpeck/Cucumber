Feature: Hear Shout

  Rules
  - Shouts only heard by people within 1000 feet of Shouter
  - Shouts cannot be longer than 140 characters
  - People do not hear their own shout

  Personas:
  - Lucy is a Listener
  - Sean is a Shouter

  Notes:
  - the term 'Shouts' becomes part of the ubiquitous language


Scenario: Lucy is not in the zone
  Given that Lucy is 1001 feet away from Sean
  When Sean shouts "Anyone out there?"
  Then Lucy does not hear Sean's shout

#Scenario: Lucy is in the zone
# Given that Lucy is 1000 feet away from Sean
#  When Sean shouts "Anyone out there?"
#  Then Lucy hears Sean's shout

#Scenario:  Sean does not hear his own shout
#   When Sean shouts "What's up world?"
#   Then Sean should not hear himself


