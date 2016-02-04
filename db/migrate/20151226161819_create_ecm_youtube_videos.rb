class CreateEcmYoutubeVideos < ActiveRecord::Migration
  def change
    create_table :ecm_youtube_videos do |t|
      t.integer :category_id, index: true
      t.string :identifier
      t.timestamp :published_at
      t.integer :position

      t.string :title
      t.text :description
      t.integer :duration

      t.timestamps null: false
    end
  end
end
