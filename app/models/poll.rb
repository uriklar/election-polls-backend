class Poll < ActiveRecord::Base
	has_many :results, -> { order 'mandates desc' }, :dependent => :destroy
	accepts_nested_attributes_for :results
end
