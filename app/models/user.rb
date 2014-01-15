class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :song

  has_many :posts
  has_many :comments, through: :posts

  def write_post(text, song)
    new_post = Post.create!(text: text, song: song)
    self.posts << new_post
    return new_post
  end

  # def submit_mood(mood, song)
  #   new_post = Post.create!(mood: mood, song: song)
  #   self.posts << new_post
  #   return new_post
  # end

end
