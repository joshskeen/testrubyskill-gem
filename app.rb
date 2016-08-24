require 'bundler'
Bundler.require
require 'rubyskill'

class ExampleSkill < RubySkill::Skill
  intent :testIntent2 do |intent|
    intent.slots = { slotName1: 'FooType', slotName2: 'FooTypeTwo' }
    intent.utterances = [%w(change alter update), %w(the), %w(light fixture appliance), 'with code', '{ApplianceCode}']
  end
  intent :testIntent1 do |intent|
    intent.slots = { slotName1: 'Amazon.DATE', slotName2: 'CustomSlotType' }
    intent.utterances = [%w(delays status info), %w(at under beneath), '{AirportCode}']
  end
end
