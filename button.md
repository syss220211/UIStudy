## Swift Button

```
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("pressed") // button이 눌렸을 때 하는 일
            } label: {
                Image(systemName: "heart") // button 이 어떻게 생겼는지
                    .padding(8)
                    .tint(.red)
                    .background(.black)
                    .cornerRadius(13)
                Text("SY")
                    .padding(8)
                    .background(.black)
                    .tint(.orange)
                    .cornerRadius(13)
            }
            
            Button(role: .cancel) {
                print("cancel!")
            } label: {
                Text("cancel!")
                    .tint(.red)
            }
            
            // naver로 이동
            Link("NAVER", destination: URL(string: "https://www.naver.com/")!)
                .tint(.green)
                .frame(width: 100, height: 40)
                .fontWeight(.bold)
                .background(.yellow)
            
            Menu("Choice") {
                Button("first"){
                    print("press first")
                }
                Button("Second"){
                    print("press second")
                }
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
