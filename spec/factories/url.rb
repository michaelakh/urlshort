FactoryBot.define do
  factory :url do
    url Faker::Internet.url
    slug 'http://localhost:3000/sadhau'
    visits 0
  end

end
  