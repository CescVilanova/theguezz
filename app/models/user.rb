class User < ActiveRecord::Base
  has_one :selected_club, class_name: "Club"
  has_many :predictions
  has_many :actual_results
end
