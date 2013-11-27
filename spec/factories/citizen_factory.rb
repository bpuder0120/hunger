FactoryGirl.define do  
  factory :citizen do
    age {(1..99).to_a.sample}
    sex {['M', 'F'].sample}
    first_name {(('A'..'Z').to_a.sample + ('A'..'Z').to_a.sample  + ('A'..'Z').to_a.sample)}
    last_name {(('A'..'Z').to_a.sample + ('A'..'Z').to_a.sample  + ('A'..'Z').to_a.sample)}
  end
end