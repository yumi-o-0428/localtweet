# **README**
# **@LOCAL**(アットローカル)概要
![スクリーンショット 2020-05-07 17 02 57](https://user-images.githubusercontent.com/61722023/81269836-df05bf00-9084-11ea-9ed6-ec41799d716d.png)

## **本番環境**
http://54.65.108.12

## **テストユーザー**
メールアドレス　test@gmail.com  
パスワード　aaa111
<br></br>
<br></br>

# **制作した経緯**
前職の旅行WEBサイトの営業として感じた、「温泉地側」と「ユーザー側」の課題を解消し  
双方をマッチングさせる場を提供したいと思い、開発しました。  
温泉地を通して、地域を知り旅行してもらい、人に伝え、また旅行してもらう...  
そんな地域活性のお手伝いができたらと考えています。  
- **温泉地側の課題**
  - 認知度が低いと旅行先の候補に入らない = 旅行者が増えない
  - 広告などの経費をかけないとなかなか認知してもらえない
<br></br>
- **ユーザー側の課題**
  - 色んな温泉に行きたいが、どんな温泉があるか知らない
  - ある程度行き先が決まらないと検索しにくい
  - 土地勘がない地域では特に検索しにくい
<br></br>
<br></br>

# **使用技術一覧**
- html&Sass
- JavaScript
- jQuery
- Ruby
- Ruby on Rails
- MySQL
- AWS
<br></br>
<br></br>

# **実装機能一覧**
- ユーザー登録
- トップページ（温泉地一覧表示）
- 温泉地投稿
- 温泉地詳細表示
- 投稿編集・削除
- 行きたい（お気に入り）機能
- マイページ表示
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
温泉地名、写真、泉質、エリア、タグ、住所、URLを入力し投稿します。  
必須項目には、入力しないと投稿できないようにバリテーションをかけています。  
写真は、デフォルトで設定してある画像をクリックすると選択でき、プレビュー表示されます。  
タグには、gemファイルの「acts-as-taggable-on」を導入しており、ユーザーが入力した任意の文字をタグとして  
表示します。「,」をつけることで、複数のタグ付けを行えるようにしています。
<br></br>

## **温泉地詳細表示**
![スクリーンショット 2020-05-11 9 44 04](https://user-images.githubusercontent.com/61722023/81514826-0b168e00-936c-11ea-9b10-276f87131c18.png)
各ページに表示された温泉地をクリックすると、詳細画面に遷移します。  
自身が投稿した温泉地には、写真右上に「編集」「削除」ボタンが表示されます。  
自身の投稿以外の温泉地詳細ページでは、「行きたいボタン」が表示されます。
<br></br>

## **投稿編集・削除**
![スクリーンショット 2020-05-11 9 56 45](https://user-images.githubusercontent.com/61722023/81515295-4ade7500-936e-11ea-8ffd-50f6bce1fa56.png)
![スクリーンショット 2020-05-11 9 58 17](https://user-images.githubusercontent.com/61722023/81515308-5893fa80-936e-11ea-9785-6decfa2e1dd2.png)
![スクリーンショット 2020-05-11 9 59 32](https://user-images.githubusercontent.com/61722023/81515314-634e8f80-936e-11ea-828b-a763083345d7.png)
自身が投稿した温泉地には、写真右上に「編集」「削除」ボタンが表示されます。  
「編集」ボタンをクリックすると、現在入力されている内容が表示され各項目を修正できるようにしています。  
「更新」ボタンをクリックすると、修正した内容が保存され投稿内容を更新します。  
「削除」ボタンをクリックすると、投稿から削除されるように設定しています。
<br></br>

## **行きたい（お気に入り）機能**
![スクリーンショット 2020-05-11 10 34 47](https://user-images.githubusercontent.com/61722023/81516519-1e792780-9373-11ea-80d0-097020f7a6d3.png)
自身の投稿以外の温泉地詳細ページでは、「行きたいボタン」が表示されます。    
クリックすると、ボタンの色がグレーからピンク色に変わりマイページにストックされます。
<br></br>

## **マイページ**
- **投稿一覧**
![スクリーンショット 2020-05-11 10 53 31](https://user-images.githubusercontent.com/61722023/81517479-08b93180-9376-11ea-83ca-f15fd7ae2707.png)
![スクリーンショット 2020-05-11 10 54 51](https://user-images.githubusercontent.com/61722023/81517491-153d8a00-9376-11ea-8501-82cc6a7c968d.png)
ヘッダーのアイコンをクリックするとマイページに遷移します。    
マイページでは、ユーザーの写真を設定できプロフィールの編集が可能です。  
また、タブの切替で「自身が投稿した温泉地一覧」と「行きたい温泉地一覧」が表示されます。
<br></br>
- **行きたい（お気に入り）一覧**
![スクリーンショット 2020-05-11 11 00 49](https://user-images.githubusercontent.com/61722023/81517751-e07e0280-9376-11ea-82dc-109baba15408.png)
![スクリーンショット 2020-05-11 11 03 03](https://user-images.githubusercontent.com/61722023/81517852-1de29000-9377-11ea-9f13-ca00ec7eadce.png)
タブの切り替えは、CSSで実装しておりリロードすることなくページが切り替わります。
<br></br>

## **タグ別投稿の一覧表示**
![スクリーンショット 2020-05-11 10 09 39](https://user-images.githubusercontent.com/61722023/81515565-a0675180-936f-11ea-81a8-6c7b92c647ff.png)
タグをクリックすると、そのタグに紐づけられた温泉地を一覧表示します。  
countメソッドで、該当する温泉地の件数を表示しています。
<br></br>

## **キーワード検索**
![スクリーンショット 2020-05-11 10 15 40](https://user-images.githubusercontent.com/61722023/81515740-73676e80-9370-11ea-90ac-69039fb5a184.png)
ヘッダーの検索フォームにて入力されたキーワードを、エリア、泉質、タグ、住所から検索し、該当する温泉地があれば、  
一覧表示されます。
あいまい検索に対応しているため、一部キーワードが含まれていれば検索結果として抽出されます。  
gemファイルの「Ransack」を導入して実装しています。
<br></br>
<br></br>

# **今後実装していきたい機能**
- 投稿内容の充実（おすすめグルメや、周辺観光スポットなど）
- マップ表示（Google Map　APIの導入）
- レスポンシブ機能
- 泉質の説明ページ
<br></br>
<br></br>

# **DB設計**
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
