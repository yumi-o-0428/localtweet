## usersテーブル  
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|image_name|string|null: false|
|password_digest|string|null: false|
### Association
- belongs_to :addresses
- has_many   :items
- has_many   :comments
- has_many   :cards


## tweetsテーブル  
|Column|Type|Options|
|------|----|-------|
|spa_name|string|null: false|
|area|string|null: false, unique: true|
|spring_quality|string|null: false|
|address|text|null: false|
|url|text|null: false|
|image|text|null: false|
|user_id|integer|null: false|
### Association
- belongs_to :addresses
- has_many   :items
- has_many   :comments
- has_many   :cards


## tagsテーブル  
|Column|Type|Options|
|------|----|-------|
|name|string||
|taggings_count|integer||
|acts-as-taggable-on|||
### Association
- belongs_to :addresses
- has_many   :items
- has_many   :comments
- has_many   :cards


## favoritesテーブル  
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|tweet_id|integer||
### Association
- belongs_to :addresses
- has_many   :items
- has_many   :comments
- has_many   :cards