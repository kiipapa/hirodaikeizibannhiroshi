class Answer < ApplicationRecord
  validates :content, presence: true

  mount_uploader :img, ImgUploader

end
