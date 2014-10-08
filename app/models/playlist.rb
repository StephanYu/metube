class Playlist < ActiveRecord::Base
  has_many :video_playlists
  has_many :videos, through: :video_playlists
  
  validates :name, presence: true
end
