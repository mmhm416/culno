FactoryBot.define do
  factory :user do
      nickname              { Faker::Name.initials(number: 4) }
      email                 { Faker::Internet.free_email }
      password              { 'test1234' }
      password_confirmation { password }
      birthday              { '1980-5-3' }
      level_id     { 2 }
  end
end
