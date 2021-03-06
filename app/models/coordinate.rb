class Coordinate < ApplicationRecord

  #imageカラムに、ImageUploaderを紐付け
  mount_uploader :image, ImageUploader

  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  has_many :choices, dependent: :destroy
  has_many :choice_items, through: :choices, source: :item

  belongs_to :user
end
