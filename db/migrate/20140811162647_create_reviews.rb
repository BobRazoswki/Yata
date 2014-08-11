class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :review
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
