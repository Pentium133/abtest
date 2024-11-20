FactoryBot.define do
  factory :experement do
    name { 'button_color' }
  end
end

FactoryBot.define do
  factory :experement_option1 do
    association :experement
    option { '#FF0000' }
    value { '33' }
  end
end
FactoryBot.define do
  factory :experement_option2 do
    association :experement
    option { '#00FF00' }
    value { '33' }
  end
end
FactoryBot.define do
  factory :experement_option3 do
    association :experement
    option { '#0000FF' }
    value { '33' }
  end
end
