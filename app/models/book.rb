class Book < ActiveRecord::Base
	validates :isbn, presence:true,length: {maximum: 15}, :numericality => { :greater_than_or_equal_to => 0 },uniqueness: true
end
