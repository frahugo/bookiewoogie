# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :promotion do
    title "MyString"
    starts_on "2013-10-13"
    ends_on "2013-10-13"
    discount_percentage 1.5
  end
end
