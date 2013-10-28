FactoryGirl.define do
  factory :user, :aliases => [:proposer, :owner] do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :activity_log do
    content "Lorem ipsum"
    user
  end

  factory :proposeable do
    title "Lorem Ipsum"
    content "Lorem ipsum"
    sequence(:resolve_time) { |n| n.hours.from_now }
    sequence(:index_number) { |n| 2*n }
    sequence(:version_number) { |n| 3*n }

    #adjust once rulesets implemented
    ruleset_id { 1 }

    #adjust once proposeable_types implemented
    proposeable_type_id { 1 }

    successor_id { nil }

    proposer
    owner

  end

end