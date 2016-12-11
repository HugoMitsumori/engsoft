class Watching < ActiveRecord::Base
	belongs_to :watcher, class_name: "User"
	belongs_to :show, class_name: "Show"
	validates :status, presence: true
end