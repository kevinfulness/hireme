class Project < ActiveRecord::Base
	belongs_to :user
	has_many_attached :images
	has_one_attached :thumbnail

	validates :title, presence: true
	validates :description, presence: true
	validates :thumbnail, presence: true
end