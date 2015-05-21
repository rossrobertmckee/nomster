class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 120, :minimum => 3 }
	validates :address, :presence => true
	validates :description, :presence => true,  :uniqueness => true, :length => { :maximum => 300 }
end
