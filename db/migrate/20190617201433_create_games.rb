class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :slug
      t.string :name
      t.text :description
      t.integer :metacritic
      t.string :background_image
      t.integer :rating
      t.string :platform
      t.string :genre
      t.string :esrb_rating
      t.references :user, foreign_key: true
    end
  end
end
