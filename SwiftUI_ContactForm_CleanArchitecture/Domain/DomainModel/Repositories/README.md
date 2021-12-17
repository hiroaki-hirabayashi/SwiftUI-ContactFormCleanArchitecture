#  Repositories階層
View ↔︎ ViewModel ↔︎ UseCase ↔︎ 【Repository】 ↔︎ DataInfrastructure

DataInfrastructureが実装を行うためのインターフェース

機能単位でディレクトリを切り、Protocolで必要なメソッドを定義する

「【機能名】【利用先】Repository」となる様にする

Entityを扱う定義をしてはいけない
