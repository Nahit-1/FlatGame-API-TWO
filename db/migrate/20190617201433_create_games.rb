class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :slug
      t.string :name
      t.integer :metacritic
      t.string :background_image
      t.integer :rating
      t.string :platform
      t.string :genre
    end
  end
end
