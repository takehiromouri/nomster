FactoryGirl.define do 
	factory :comment do
		rating "1_star"
	end
end

FactoryGirl.define do
	factory :user do
		email 'tes@example.com'
		password 'testtesttest'
	end
end

FactoryGirl.define do
	factory :place do
		name 'Example'
		description 'Description'
		address '447 Williams St'
	association :user
	end
end