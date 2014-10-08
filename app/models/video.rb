class Video < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :video_playlists
  has_many :playlists, through: :video_playlists
  
  validates :author_id, presence: true
  validates :url, presence: true
end
