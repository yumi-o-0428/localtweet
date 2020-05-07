# **README**
# **@LOCAL**概要
![スクリーンショット 2020-05-07 17 02 57](https://user-images.githubusercontent.com/61722023/81269836-df05bf00-9084-11ea-9ed6-ec41799d716d.png)

### **本番環境**
http://54.65.108.12

### **テストユーザー**
メールアドレス　test@gmail.com
パスワード　aaa111


# **制作した経緯**



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
