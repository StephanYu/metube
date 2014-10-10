class RenameColumnToVideos < ActiveRecord::Migration
  def change
    rename_column :videos, :youtube_url, :youtube_id
  end
end
