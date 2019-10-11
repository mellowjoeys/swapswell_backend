class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
