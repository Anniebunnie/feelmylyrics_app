class Song < ActiveRecord::Base
  attr_accessible :artist, :title, :verse, :photo

  has_many :posts
  has_many :users, through: :posts

end

