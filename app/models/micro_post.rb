class MicroPost < ApplicationRecord
  belongs_to :user
  validates_length_of :content, :maximum => 144
end
