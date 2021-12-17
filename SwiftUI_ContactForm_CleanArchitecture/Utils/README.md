# Utils階層
共通処理やExtention、定数ファイルなど実装に依存しない処理をまとめておく階層

staticなクラスになることが多い

設置に困って「とりあえずUtil化」だけは絶対にしない（利用機会が他でもあるかを考える）

# 対象とするべきもの

- DIContainer
- 定数管理
- OSSの共通処理（ラッパークラス）
- 共通API処理（ラッパークラス）
- 共通DB処理（ラッパークラス）
- UserDefaults管理（ラッパークラス）
- KeyChain管理（ラッパークラス）
- 頻繁に利用する置き換え処理などの共通処理(DateやStringなど)
- Extention
- エラー処理

# 対象にしてはいけないもの
- Viewの共通部品
- AnalyticsManager
- Logger
- モジュール連携処理
- 外部連携処理
- リソース


