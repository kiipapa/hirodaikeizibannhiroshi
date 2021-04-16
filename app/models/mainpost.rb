class Mainpost < ApplicationRecord
  
  validates :title, presence: true, length: { maximum: 50 }

end
