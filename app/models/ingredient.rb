class Ingredient < ActiveRecord::Base

	belongs_to :recipe

	validates :name , presence: true
	validates :name , uniqueness: true

	def as_json(options={})
		super(:only => [:name,:id])
	end

end
