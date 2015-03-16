FactoryGirl.define do
  factory :shift do
   date "2015-03-15" 
   location "SUB I"
   starttime "7:00 a.m."
   endtime "9:00 a.m."
   sequence(:user_id) {|n| n}
  end
end
