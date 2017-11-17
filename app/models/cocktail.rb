class Cocktail < ApplicationRecord

  has_many :doses, inverse_of: :cocktail, dependent: :destroy
  has_many :ingredients, through: :doses
  mount_uploader :photo, PhotoUploader

  accepts_nested_attributes_for :doses, reject_if: :all_blank, allow_destroy: true

  validates :name, uniqueness: true, presence: true
end
