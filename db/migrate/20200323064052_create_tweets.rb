class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :spa_name
      t.string :area
      t.string :spring_quality
      t.text :address
      t.text :url
      t.text :image
      t.timestamps
    end
  end
end
