class Website < ActiveRecord::Base
	validates :short, uniqueness: true
end
