# **README**
# **@LOCAL**概要
![スクリーンショット 2020-05-07 17 02 57](https://user-images.githubusercontent.com/61722023/81269836-df05bf00-9084-11ea-9ed6-ec41799d716d.png)

## **本番環境**
http://54.65.108.12

## **テストユーザー**
メールアドレス　test@gmail.com  
パスワード     aaa111
<br></br>
<br></br>
# **制作した経緯**
<br></br>
<br></br>
# **使用技術一覧**
- html&Sass
- JavaScript
- jQuery
- Ruby
- Ruby on Rails
- MySOL
- AWS
<br></br>
<br></br>
# **実装機能一覧**
- ユーザー登録
- 温泉地一覧表示
- 温泉地投稿
- タグ付け設定
- 温泉地詳細表示
- 投稿編集・削除
- マイページ表示
- 行きたい（お気に入り）温泉地一覧表示
- タグ別投稿の一覧表示
- キーワード検索
<br></br>
## **ユーザー登録**
![スクリーンショット 2020-05-07 17 38 33](https://user-images.githubusercontent.com/61722023/81273413-cba92280-9089-11ea-8730-7f820bbcc7bf.png)
ユーザー名、メールアドレス、パスワードにてユーザー登録します。  
パスワードは、gemファイル「bcrypt」を導入し、暗号化してDBに保存されるようにしています。
<br></br>
## **トップページ**
![スクリーンショット 2020-05-07 19 29 24](https://user-images.githubusercontent.com/61722023/81284547-331a9e80-9099-11ea-9b26-0a5358b16e44.png)



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
