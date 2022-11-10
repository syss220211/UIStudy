## ScrollView

화면보다 더 큰 사이즈의 뷰를 보여주는 방법


단순히 옆으로 스크롤 되는 뷰
```
import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Text("1")
                .frame(width: 300, height: 500)
                .background(.red)
            Text("2")
                .frame(width: 300, height: 500)
                .background(.blue)
            Text("3")
                .frame(width: 300, height: 500)
                .background(.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

수평으로 스크롤 되는 뷰
```
import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            // showsIndicators : 밑에 좌우 스크롤의 유무
            HStack {
                Text("1")
                    .frame(width: 300, height: 500)
                    .background(.red)
                Text("2")
                    .frame(width: 300, height: 500)
                    .background(.blue)
                Text("3")
                    .frame(width: 300, height: 500)
                    .background(.yellow)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```
