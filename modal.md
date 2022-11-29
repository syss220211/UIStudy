## About MODAL


1. Button을 활용해서 modal 사용하기
```
import SwiftUI

struct ContentView: View {
    
    @State var isShowingModal: Bool = false
    
    var body: some View {
        Button {
            isShowingModal = true
        } label: {
            Text("Call modal")
        }
        .sheet(isPresented: $isShowingModal) {
            Text("open modal!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```
