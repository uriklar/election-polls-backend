class Poll < ActiveRecord::Base
	has_many :results, -> { order 'mandates desc' }
	accepts_nested_attributes_for :results
end
