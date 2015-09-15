FactoryGirl.define do 
	factory :comment do
		rating "1_star"
	end
end

FactoryGirl.define do
	factory :user do
		email 'test@example.com'
		password 'testtesttest'
	end
end