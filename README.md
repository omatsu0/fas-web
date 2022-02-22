# FAS（Fashion Advise Site）
![fas-site work](https://user-images.githubusercontent.com/62799261/127780040-9f26a96b-8243-4cd3-be77-56fe81117af2.png)

### サイトURL
https://fas-web.net/

### ゲストログイン / Google認証
![F1B18350-C717-49E3-A7E1-4EA906927A72](https://user-images.githubusercontent.com/62799261/138542874-438e857a-4f95-41f4-bfdf-21f1616d3290.jpeg)

※ゲストログインはユーザ登録なしでログインできます。

## サイト概要
**服のマッチングアドバイス用掲示板サイト**。<br>
- 自分の欲しい服の要件を投稿して、それを見た人が返信で商品のサイトのリンクを貼る<br>
- 基本的には、ユーザーが要望を投稿し、ショップがうちのサイトのこの商品はどうですか、と商品リンクを貼る感じ。<br>
例）*「この画像に合うズボンが欲しいです」「うちのこの商品はどうですか（URL）」*

### サイトテーマ
- 家にいながら、要件に合った服をプロ（またはユーザー）に選んでもらえるサイト

### テーマを選んだ理由
- 服を店員さんに選んでもらいたいが、おしゃれなお店に入りづらい...
- 自粛でお店が閉まっていて、店員さんにアドバイスがもらえない...

そんな時**ネットでアドバイスから購入**までできたらいいと思いました。

![fas-site work_about](https://user-images.githubusercontent.com/62799261/127780114-9fbd7979-69d0-4368-9d21-75cdf774a335.png)

### ターゲットユーザ
- 全般（主な利用シーンに該当する人）

### 主な利用シーン
- 洋服選びに困っているが、直接店舗に行けない、行きづらい
<br/>
<br/>

### 機能一覧
|機能|
| :-- |
| アカウント登録 |
| ログイン/ログアウト |
| googleアカウント認証 |
| ゲストログイン |
| 管理者画面 |
| タグ機能 |
| 投稿・編集・削除機能 |
| 複数画像投稿機能 |
| 投稿募集期間設定（自動close機能） |
| 投稿検索機能（タイトル・タグ） |
| コメント機能（募集終了など） |
| いいね機能（Ajax） |
| ベストコメント機能 |
| マイページ |
| 店舗住所登録機能（GoogleMap API） |
| ページネーション |
| レスポンシブ対応 |
| お問い合わせメール（自動返信あり） |

<br/>
<br/>

- 投稿詳細ページ
![fas-site work_posts_20](https://user-images.githubusercontent.com/62799261/128077540-19d57074-dc36-4caf-b622-a7c02c977c5f.png)

- プロフィールページ（店舗マップ有り）
![fas-site work_users_19_profile](https://user-images.githubusercontent.com/62799261/128078152-e9c48b23-1375-4f1d-98a0-47bd8c33539a.png)

- 管理画面
![B11D6D62-8C7B-45C1-9A62-796A2D0D65B5_1_105_c](https://user-images.githubusercontent.com/62799261/128077059-f4b5a83d-3fc2-422d-b602-967a1f5ef266.jpeg)

<br/>

- レスポンシブ対応
<div align="center">
   <img src="https://user-images.githubusercontent.com/62799261/128885489-49a73fd6-4bda-405e-9d26-6173077b2597.jpeg" alt="スマホ画面">
</div>
<br/>
<br/>

## 使用技術
* フロントエンド
    * jQuery 3.5.1
    * HTML / SCSS / Bootstrap / Vue（動作確認のみ）
* バックエンド
    * Ruby 2.7.1
    * Ruby on Rails 6.0.3
    * Google MapAPI
* インフラ
    * Docker 19.03.12/ docker-compose 1.26.2
    * Mysql 8.0
    * AWS (VPC,EC2,RDS,Route53,EIP,IAM)
* その他使用ツール
    * Visual Studio Code
    * draw.io
    * Google spread sheet
<br/>
<br/>

## 工夫したところ
- 全体的にユーザビリティを重視し、見た目や操作などが分かりやすいサイトをめざしました。
特にSNSサインアップ時の入力をどうするかと言う点において、他の投稿サイト（QiitaやNewsPicksなど）を参考にし、</br>deviseの公式をもとにカスタマイズして最終的にパスワードの入力を省きユーザの手間を減らしました。
- デザインはBootstrapを使用しつつ、思っている形にするため、検証を使い細かくCSS設定しました。
- ソースコードは繰り返し部分をなくすなど、dryを意識しました。
