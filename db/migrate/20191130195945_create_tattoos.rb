class CreateTattoos < ActiveRecord::Migration[5.2]
  def change
    create_table :tattoos do |t|
      t.string :title
      t.text :picture
      t.text :description
      t.date :day
      t.string :artist_name
      t.string :artist_instagram
      t.string :location
      t.string :ink_brand
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
