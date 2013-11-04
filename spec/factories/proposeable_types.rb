# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :proposeable_type do
    sequence(:type_name)  { |n| "RuleType #{n}" }
    interval 1
    weekday 1
    voter_role_id 1
    resolution_type "MyString"
    majority ""
    quorum 1
    in_effect false
    instant_resolve false
    succeeded false
  end
end
