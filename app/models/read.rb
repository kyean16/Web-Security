class Read < ActiveRecord::Base
	belongs_to :user
	belongs_to :book
	validates_uniqueness_of :book_id, scope: :user_id # Checks uniquessness of book id for specific user_id
end
