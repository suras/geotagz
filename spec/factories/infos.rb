# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :info do
    ip_address "MyString"
    browser ""
    os "MyString"
    country "MyString"
    state "MyString"
    city "MyString"
    street "MyString"
    latitude 1.5
    longitude 1.5
  end
end
