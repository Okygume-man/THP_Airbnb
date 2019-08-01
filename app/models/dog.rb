class Dog < ApplicationRecord
	has_many :strolls
	has_many :dogsitters, through: :stolls
	belongs_to :city
end
