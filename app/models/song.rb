class Song < ActiveRecord::Base
  attr_accessible :artist, :title, :verse

  has_many :posts
  has_many :users, through: :posts

end

