class Poll < ActiveRecord::Base
	has_many :results, :dependent => :destroy, -> { order 'mandates desc' }
	accepts_nested_attributes_for :results
end
