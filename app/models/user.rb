class User < ApplicationRecord
  validates_length_of :name, :maximum => 32
  validates_length_of :school, :maximum => 128
  has_many :micro_posts

  def fetch_user_name
    user = User.all
    user.each do |u|
      @user_name = u.name
    end
  end
end
