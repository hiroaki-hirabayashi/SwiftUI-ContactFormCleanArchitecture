#  Manager

ログ収集処理やFirebaseAnalyticsなどのプロジェクト内部で特定の機能に依存できない処理を実装したクラスを置くディレクトリ

シングルトンになるクラスが多い

# 対象とするべきもの

- AnalyticsManager
- Logger
- モジュール連携処理
- 外部連携処理

# 対象にしてはいけないもの

- DIContainer
- 定数管理
- OSSの共通処理（ラッパークラス）
- 共通API処理（ラッパークラス）
- 共通DB処理（ラッパークラス）
- UserDefaults管理（ラッパークラス）
- KeyChain管理（ラッパークラス）
- Extention
- リソース
