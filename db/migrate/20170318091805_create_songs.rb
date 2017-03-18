class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :songtitle
      t.string :album
      t.integer :releaseyear

      t.timestamps
    end
  end
end
