class User < ApplicationRecord
	has_and_belongs_to_many :tv_shows
end
