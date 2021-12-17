# UseCase階層
View ↔︎ ViewModel ↔︎ 【UseCase】 ↔︎ Repository ↔︎ DataInfrastructure

機能単位でディレクトリを切り、機能の関心に合わせてファイルを切り分ける

Protocolで必要なメソッドを定義し、実装ファイルと検証用やモック、テスト用などのファイルを作成し環境毎にDIする物を変更するように利用する

類似の処理を行う基底クラスを実装する場合は基底クラスをDIContainerに含めない

基底クラスでない限り、final修飾詞が付けれない時点で実装しようとしている内容を見直してください

# 振る舞い

Repositoryを介してビジネスロジックを提供する

Repositoryは複数所持しても構わない（あまり多岐に渡るようならUseCaseの切り分け不足を疑う）

Entityを扱ってはいけない(RepositoryとはModelで受け渡しを行う、Entityの変更に依存しない)

Repositoryのアクセスが必須というわけではない（ビジネスロジックだけの処理もある）

# 呼び出し可能

- Manager(Routerは含まない)
- Util
- Repository(DI)
- Model
