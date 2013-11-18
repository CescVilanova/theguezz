class Club < ActiveRecord::Base
  mount_uploader :crest, CrestUploader
end
