class Warrior < ApplicationRecord
  mount_uploader :image, WarriorUploader
end
