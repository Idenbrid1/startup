class Newz < ApplicationRecord
	# belongs_to :admin
	has_many :notices 
	validates :title, presence: true, length: {minimum: 3}
end
