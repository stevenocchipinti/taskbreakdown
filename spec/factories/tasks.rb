# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    description "MyText"
    percentage_complete "9.99"
  end
end
