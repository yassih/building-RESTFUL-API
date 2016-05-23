class Recipe < ActiveRecord::Base

	has_many :ingredients
  accepts_nested_attributes_for :ingredients, :allow_destroy => true
	validates :name , uniqueness: true
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

      # # Option 1: Purely overriding the #as_json method
      # def as_json(options={})
      #   { :name => self.name }  # NOT including the email field
      # end

      # Option 2: Working with the default #as_json method
      # def as_json(options={})
      #   super(:only => [:name,:id])
      # end
end


