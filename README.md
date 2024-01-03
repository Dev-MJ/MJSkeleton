```swift
List {
      ForEach (0..<10) { _ in
        HStack {
          Image(systemName: "suit.heart.fill")
          Text("동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세 \n 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세 ~~~ \n\n\n")
        }
        .redacted(reason: .placeholder)
        .skeleton()
      }
    }
```

https://github.com/Dev-MJ/MJSkeleton/assets/23014020/a4d60baa-9785-4c45-9216-b3fdd089658f

