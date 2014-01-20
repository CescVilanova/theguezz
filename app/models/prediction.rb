class Prediction < ActiveRecord::Base
  belongs_to :match
  belongs_to :user
  has_many :answers
  has_many :questions, through: :answers
  accepts_nested_attributes_for :answers
end
