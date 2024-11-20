FactoryBot.define do
  factory :experement do
    name { 'button_color' }
  end
end

FactoryBot.define do
  factory :experement_option do
    association :experement
    option { '#FF0000' }
    value { '33' }
  end
end
