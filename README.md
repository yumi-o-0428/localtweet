# README


## usersテーブル  
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|image_name|string||
|password_digest|string|null: false|
### Association
- has_many :tweets
- has_many :favorites
- has_many :fav_tweets, through: :favorites, source: :tweet
- has_secure_password



## tweetsテーブル  
|Column|Type|Options|
|------|----|-------|
|spa_name|string|null: false|
|area|string|null: false|
|spring_quality|string|null: false|
|image|text|null: false|
|address|text||
|url|text||
|user_id|integer|null: false|
### Association
- belongs_to :user ,foreign_key: "user_id"
- has_many :favorites
- has_many :fav_users, through: :favorites, source: :user
- acts_as_taggable



## tagsテーブル  
|Column|Type|Options|
|------|----|-------|
|name|string||
|taggings_count|integer||
|acts-as-taggable-on|||
### Association
- has_many   :tweets



## favoritesテーブル  
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|tweet_id|integer|null: false|
### Association
- belongs_to :user ,foreign_key: "user_id"
- belongs_to :tweet,foreign_key: "tweet_id"
- acts_as_taggable
