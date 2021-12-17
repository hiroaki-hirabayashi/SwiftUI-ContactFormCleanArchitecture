# Resources

画像及びカラーアセット、CoreDataModel、文字列定数情報などのリソースファイルをまとめておく階層
ソースが有ってはならない

# Resourceの呼び出し範囲

直指定　->　View
Object配列保持 -> ViewModel
ロジック利用　-> UseCase（リソースネームまでに留めてほしい　※UIKit,SwiftUIのimportを避けたい）

# 対象とするべきもの

- *.xcassets
- *.xcdatamode
- *.strings
- その他リソースファイル

# 対象にしてはいけないもの
- リソース情報以外
