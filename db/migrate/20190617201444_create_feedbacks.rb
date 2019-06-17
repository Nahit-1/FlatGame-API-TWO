class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.integer :rating
    end
  end
end
