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
- トップページ（温泉地一覧表示）
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
![スクリーンショット 2020-05-07 19 37 05](https://user-images.githubusercontent.com/61722023/81285566-ae308480-909a-11ea-9afa-457929a9566a.png)
![スクリーンショット 2020-05-07 19 46 19](https://user-images.githubusercontent.com/61722023/81286407-fa2ff900-909b-11ea-9d6d-5e6d5a5eedcf.png)
新規登録またはログイン後、トップページにて全てのユーザーが投稿した温泉地を一覧で表示しています。
<br></br>
## **温泉地投稿**
![スクリーンショット 2020-05-11 9 10 50](https://user-images.githubusercontent.com/61722023/81514046-bec94f00-9367-11ea-841b-a018625deaad.png)
![スクリーンショット 2020-05-11 9 15 10](https://user-images.githubusercontent.com/61722023/81514114-241d4000-9368-11ea-98c0-336e9dfdb2e1.png)
![スクリーンショット 2020-05-11 9 17 28](https://user-images.githubusercontent.com/61722023/81514201-a574d280-9368-11ea-9c48-c365f63ea96f.png)



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
