class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  acts_as_list

  belongs_to :category
  acts_as_votable
end
