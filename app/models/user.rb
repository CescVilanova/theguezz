class User < ActiveRecord::Base
  has_many :matches
  has_many :clubs, through: :matches
end
