class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with:		%r{\.(gif|jpg|png)$}i,
		message:	'you have to use extension called gif, jpg or png'
	}
end
