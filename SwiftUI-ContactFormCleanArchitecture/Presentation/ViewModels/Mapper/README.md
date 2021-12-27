# Mapper(ViewModel <--> DomainModel)

ViewModelとModelの相互変換を担当する

EntityMapperと違い必須の実装にはならない（プリミティブ型で簡潔したり、結果を必要としない機能もあるから）

ViewModelの利用先が分かる様に「【画面機能名】Mapper」となる様にする

変換の実装以外をしてはいけない

# 呼び出し可能

- Util
- ViewModel
- Model
