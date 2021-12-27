# DataInfrastructure階層

View ↔︎ ViewModel ↔︎ UseCase ↔︎ Repository ↔︎ 【DataInfrastructure】

データの取り扱い方法に合わせてディレクトリを作成する

## 例
 - Connection（通信）
   - Http
   - Bluetooth
 - Persistence（永続化処理）
   - DB
   - UserDefaults
   - KeyChain

# 振る舞い

API,DB,UserDefault,KeyChainなどデータの出し入れを担当する部分

Repositoryのインターフェースを実装している

処理内容はデータの取得、保存処理

Entityを戻り値として渡す実装をしてはいけない

ビジネスロジックの実装はしない

# 呼び出し可能

- Manager(Routerは含まない)
- Util
- Mapper



