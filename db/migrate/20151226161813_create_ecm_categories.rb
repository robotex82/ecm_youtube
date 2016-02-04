class CreateEcmCategories < ActiveRecord::Migration
  def change
    create_table :ecm_youtube_categories do |t|
      t.string :identifier

      t.timestamps null: false
    end
  end
end
