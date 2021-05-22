class Post < ApplicationRecord

  validates :content, presence: true, length: { maximum: 200 }

  mount_uploader :img, ImgUploader

end
