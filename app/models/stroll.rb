class Stroll < ApplicationRecord
	t.belongs_to :dog
    t.belongs_to :dogsitter
    
end
