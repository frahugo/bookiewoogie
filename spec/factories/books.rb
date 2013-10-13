# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "MyString"
    summary "MyText"
    cover_image "MyString"
    price "9.99"
  end
end
