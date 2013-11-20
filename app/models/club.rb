class Club < ActiveRecord::Base
  has_many :matches
  has_many :users, through: :matches
  mount_uploader :crest, CrestUploader
end
