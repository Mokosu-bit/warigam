FactoryBot.define do
  factory :user_payment do
    payment_amount { 1 }
    user { nil }
    gamble { nil }
  end
end
