class Result < ActiveRecord::Base
	belongs_to :poll
	belongs_to :party
end
