class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.integer :user_id
      t.integer :good_id
      t.boolean :desired

      t.timestamps
    end
  end
end
