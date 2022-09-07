FactoryBot.define do
  factory :weapon do
    name { FFaker::Name.first_name }
    description { FFaker::LoremBR.sentence }
    power_base { FFaker::Random.rand(1..9999) }
    power_step { FFaker::Random.rand(1..9999) }
  end
end
