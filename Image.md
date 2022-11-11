## SwiftUI에 Image를 넣어보자

```
import SwiftUI

struct ContentView: View {
    var body: some View {
        // 이미지 불러오기
        Image("seoyeon")
        //사이즈 조정
            .resizable()
//            .aspectRatio(contentMode: .fit)
        // frame에서 설정한 비율에 대해서 사진 비율도 조절해주는 것
            .aspectRatio(contentMode: .fill)
        //-> fill 은 축에 빈 공간을 남기지 않고 전체 보기를 채우도록 이미지의 크기를 조정하여 사용 가능한 공간에 이미지를 채움
            .frame(width: 200, height: 200)
            .clipped() // 사진 자르기
            .background(.black)
            .border(.purple, width: 3) // 테두리
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


```
.aspectRatio(contentMode: .fit) : 설정한 비율값에 맞추어 사진 크기를 자동으로 조절
.aspectRatio(contentMode: .fill) : 설정한 비율에 사진을 가득 채워서 이미지 크기르 조정 (비율값을 넘어가는 가장 최소한의 값으로 이미지 조절)


시스템 심볼을 활용한 이미지 넣기
```
import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "sun.min")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```
