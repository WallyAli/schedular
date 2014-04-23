# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendance do
    time_in "2014-04-15 23:40:29"
    time_out "2014-04-15 23:40:29"
    date "04/23/2014"
    child_id "MyString"
  end
end
