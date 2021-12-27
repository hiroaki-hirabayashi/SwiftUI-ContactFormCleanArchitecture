# ViewModel階層
View ↔︎ 【ViewModel】 ↔︎ UseCase ↔︎ Repository ↔︎ DataInfrastructure

画面機能単位でディレクトリを切る、共通処理、個別処理、画面の基底処理などきちんと分けてファイルを作成する

このサンプルの例とするとページ処理の部分はオンボーディングと問診の双方で利用するのでCommonとし

オンボーディングだけの共通処理があればOnboardingのディレクトリ内で共通ViewModelとしてファイルを作り、それぞれの機能で継承を行う

# 振る舞い

Viewの状態管理を行う、画面に必要なUseCaseをDIして利用する

画面の座標処理などは実装しても良いが、ビジネスロジックは実装しない

# 呼び出し可能

- Manager(Routerは含まない)
- Util
- UseCase(DI)
- Model

# FAQ
## Q 機能特有でDataStore経由で取得した文字列を表示用に加工する場合はViewModelで加工して良い？

## A NO
UseCaseの１つとして判断するのでUseCaseを切り分けるのが適切です
