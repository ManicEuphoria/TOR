class User < ApplicationRecord
  validates_length_of :name, :maximum => 32
  validates_length_of :school, :maximum => 128
  has_many :micro_posts
end
