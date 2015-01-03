class Poll < ActiveRecord::Base
	has_many :results, :order => "mandates DESC"
	accepts_nested_attributes_for :results
end
