class Playlist < ActiveRecord::Base
  has_many :video_playlists
  has_many :videos, through: :video_playlists
  has_many :comments, :as => :commentable
  validates :name, presence: true
end
