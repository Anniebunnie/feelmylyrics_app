class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :text
      t.string :lyric
      t.integer :song_id
      t.integer :user_id
      t.integer :mood_id

      t.timestamps
    end
  end
end
