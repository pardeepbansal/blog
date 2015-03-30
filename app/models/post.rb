class Post < ActiveRecord::Base
	validates :title , :body , presence: true

	before_validation(on: :create) do
    	self.slug = title.gsub(" ", "-").downcase unless attribute_present?("slug")
  	end
end
