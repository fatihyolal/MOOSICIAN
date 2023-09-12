class AddMusicUrlAndEmbedUrlToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :music_url, :string
    add_column :posts, :embed_url, :string
  end
end
