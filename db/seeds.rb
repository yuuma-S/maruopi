# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ==================== end_user ==========================================
EndUser.create(name: "田中太郎", email: "tanaka@tanaka", password: 123456)
EndUser.create(name: "鈴木一郎", email: "suzuki@suzuki", password: 123456)
EndUser.create(name: "木村花子", email: "kimura@kimura", password: 123456)
EndUser.create(name: "石田さくら", email: "ishida@ishida", password: 123456)
EndUser.create(name: "上田隆司", email: "ueda@ueda", password: 123456)
EndUser.create(name: "村上春雄", email: "murakami@murakami", password: 123456)
EndUser.create(name: "佐々木愛", email: "sasaki@sasaki", password: 123456)
EndUser.create(name: "テストユーザー", email: "test@test", password: 123456)
EndUser.create(name: "maruopi公式", email: "maruopi@maruopi", password: 123456, admin: true)
# ========================================================================

# ==================== question ==========================================
Question.create(end_user_id: 1, title: "花粉症の対策方法を教えて下さい", body:"毎年花粉症に悩んでいます。どうしたら解決しますか？")
Question.create(end_user_id: 2, title: "ruby on railsの勉強法を教えて！", body:"最近プログラミングの勉強を始めました。ruby on railsのいい勉強法を教えてください。")
Question.create(end_user_id: 3, title: "オリンピックのチケット入手方法", body:"東京オリンピックのチケットが欲しいです。チケットの入手卯方法を教えてください。")
Question.create(end_user_id: 4, title: "インフルエンザ対策方法", body:"インフルエンザにかからないようにするにはどうすればいいですか？")
Question.create(end_user_id: 5, title: "アメリカに留学したいです。", body:"アメリカに留学するにはどうしたらいいですか？")
Question.create(end_user_id: 6, title: "今夜の晩御飯はどうしよう", body:"晩御飯どうしたらいいか考え中です。オススメのレシピありますか？")
Question.create(end_user_id: 7, title: "javascriptとは？", body:"javascriptがなにかわかりません。だれか教えてください。？")
Question.create(end_user_id: 8, title: "maruopiの使い方", body:"maruopiの使い方を教えてください。")
Question.create(end_user_id: 1, title: "東京のおすすめの観光地はどこですか", body:"修学旅行で東京に行きます。おすすめの観光地を教えてください。")
Question.create(end_user_id: 2, title: "地下鉄で忘れ物をしました", body:"どうしたらいいですか？")
Question.create(end_user_id: 3, title: "次の流星群はいつ確認できますか。", body:"流星群が見たいです。")
# ========================================================================


# ==================== answer ============================================
 Answer.create(end_user_id: 2, question_id: 1, title: "病院で薬を処方してもらいましょう。", body: "病院に行けばお医者さんが花粉症用の薬を処方してくれますよ。おすすめです。")
 Answer.create(end_user_id: 3, question_id: 2, title: "インターネットを使って勉強しましょう", body: "progateやドットインストールなどのオンライン教材で勉強するといいかもしれないですよ。")
 Answer.create(end_user_id: 4, question_id: 2, title: "本を買いましょう", body: "『現場で使える Ruby on Rails 5速習実践ガイド』がとてもわかりやすいですよ。リンク貼っときますね。https://www.amazon.co.jp/%E7%8F%BE%E5%A0%B4%E3%81%A7%E4%BD%BF%E3%81%88%E3%82%8B-Ruby-Rails-5%E9%80%9F%E7%BF%92%E5%AE%9F%E8%B7%B5%E3%82%AC%E3%82%A4%E3%83%89-%E5%A4%A7%E5%A0%B4%E5%AF%A7%E5%AD%90/dp/4839962227/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=rails&qid=1581555978&sr=8-1")
 Answer.create(end_user_id: 5, question_id: 3, title: "ネットで注文しましょう", body: "公式ページで注文できますよ。抽選ですからお早めに。")
 Answer.create(end_user_id: 6, question_id: 4, title: "手洗いうがいをしましょう。", body: "家に帰ってきたら手洗いうがいをしっかりしましょう。消毒用エタノールもかなり効果的だと思うので用意しておくといいですよ。")
 Answer.create(end_user_id: 9, question_id: 8, title: "ユーザーを登録しましょう。", body: "ユーザー登録ページでメールアドレスと名前、パスワードを登録しましょう。")
 Answer.create(end_user_id: 9, question_id: 8, title: "質問してみましょう", body: "右上のquestionボタンを押すと質問一覧が表示されます。画面上に表示されている『新しく質問する』ボタンを押してください。フォームにタイトルと質問内容を入力して確定するとquestionを投稿できます。あとは回答を待つだけです。")
 Answer.create(end_user_id: 9, question_id: 8, title: "回答してみましょう", body: "質問一覧画面から回答したい質問を選択してください。質問の下に設置されている『回答』ボタンを押すと回答フォームが表示されるのでここに回答を入力してください。")

# ========================================================================




