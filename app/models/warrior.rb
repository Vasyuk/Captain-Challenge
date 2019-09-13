class Warrior < ApplicationRecord
  mount_uploader :image, WarriorUploader

  validates :name, presence: true
  validates :image, presence: true
  validates :description, presence: true
end
