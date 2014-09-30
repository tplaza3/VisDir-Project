class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :location
      t.string :budget
      t.string :category
      t.string :listing_image
      t.integer :user_id

      t.timestamps
    end
  end
end
