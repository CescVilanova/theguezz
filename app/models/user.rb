class User < ActiveRecord::Base
  has_one :selected_club, class_name: "Club"
end
