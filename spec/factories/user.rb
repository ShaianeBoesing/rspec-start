FactoryBot.define do 
    factory :user do
        nickname{ (FFaker::Lorem.word).capitalize }
        level{ FFaker::Random.rand(1..99) }
        kind{ %i[ knight wizard].sample }
    end
end
