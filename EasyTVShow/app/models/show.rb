class Show < ApplicationRecord
	validates :title, presence: true, uniqueness: {case_sensitive:false}
end

