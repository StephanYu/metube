class Video < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :video_playlists
  has_many :playlists, through: :video_playlists
  has_many :comments, :as => :commentable
  
  validates :author_id, presence: true
  validates :url, presence: true
end
