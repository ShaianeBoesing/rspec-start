require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "calculates the correct current power" do
    name =  FFaker::Name.first_name
    description = FFaker::LoremBR.sentence
    power_base = FFaker::Random.rand(1..9999)
    power_step = FFaker::Random.rand(1..9999)

    weapon = create(:weapon, name: name, description: description, power_base: power_base, power_step: power_step)

    current_power = power_base + (( weapon.level - 1 )* power_step)
    
    expect(weapon.current_power).to eql(current_power)
  end

end
