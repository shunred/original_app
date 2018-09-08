class Comment < ActiveRecord::Base
	validates :text, presence: true

	belongs_to :tweet
	belongs_to :user
end
