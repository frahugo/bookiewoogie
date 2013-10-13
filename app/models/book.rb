class Book < ActiveRecord::Base
  has_many :book_credits, dependent: :destroy
  has_many :authors, through: :book_credits

  mount_uploader :cover_image, ImageUploader
end
