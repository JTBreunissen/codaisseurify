class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :artistname
      t.string :origin
      t.string :website
      t.boolean :active

      t.timestamps
    end
  end
end
