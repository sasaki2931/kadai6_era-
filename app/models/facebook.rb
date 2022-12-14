class Facebook < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :users
end
