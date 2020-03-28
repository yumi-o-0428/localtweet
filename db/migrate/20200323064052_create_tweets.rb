class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :spa_name
      t.string :content
      t.text :image
      t.timestamps
    end
  end
end
