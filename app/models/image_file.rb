class ImageFile < ApplicationRecord

  class ImageFile < ActiveRecord::Base
    mount_uploader :image, PhotoUploader

    validates :title, presence: true
    validates :image, presence: true
    validates :name, presence: true
  end

end
