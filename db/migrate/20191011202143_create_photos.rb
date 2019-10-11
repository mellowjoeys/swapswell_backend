class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.integer :good_id

      t.timestamps
    end
  end
end
