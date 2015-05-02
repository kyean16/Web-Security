class Book < ActiveRecord::Base
	validates :isbn, presence:true,length: {maximum: 13}, format: { with: /\d/,message: "only allows digits" },uniqueness: true
	validates :authorFirst, presence:true
	validates :authorLast, presence:true
	validates :title, presence:true
	validates :year, presence:true
end