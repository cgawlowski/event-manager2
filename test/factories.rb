FactoryBot.define do
  factory :event do |f|
      # default attribute values defined here
      name { "Best event ever" }
      description { "No really this is the best event I've ever read!" }
      start_date { Time.zone.now+1.day }
      end_date { Time.zone.now+2.day }
  end
end
