## List 사용하기

List : 목록 인터페이스를 만들기 위해 사용


```
1. 단순 List 만들기

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
}

struct PersonRow: View {
    var personrow: Person
    
    var body: some View {
        Image(systemName: personrow.imageName)
        Text(personrow.name)
    }
}

struct ContentView: View {
    
    let people: [Person] =
    [Person(name: "서연", imageName: "heart"),
    Person(name: "히주", imageName: "heart.fill"),
    Person(name: "유라", imageName: "bolt")]
    
    var body: some View {
        List(people) { person in
            HStack{
                PersonRow(personrow: person)
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

2. List의 아이템을 선택할 수 있도록 만들기
```
import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
}

struct PersonRow: View {
    var personrow: Person
    
    var body: some View {
        Image(systemName: personrow.imageName)
        Text(personrow.name)
    }
}

struct ContentView: View {
    
    let people: [Person] =
    [Person(name: "서연", imageName: "heart"),
    Person(name: "히주", imageName: "heart.fill"),
    Person(name: "유라", imageName: "bolt")]
    
    // @State : 관리하는 값을 읽고 쓸때 사용하는 것
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(people, selection: $multiSelection) { person in
                HStack{
                    PersonRow(personrow: person)
                }
            }
            .navigationTitle("Friend")
            .toolbar { EditButton() }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

## List item delete & move

```
import SwiftUI

struct ContentView: View {
    
    @State private var users = ["히주", "서연", "유라"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onDelete(perform: removeList)
                .onMove(perform: moveList)
            }
            .navigationTitle("학생")
            .toolbar { EditButton() }
        }
    }
    
    //함수구현부
    func removeList(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
    func moveList(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

List는 목록 인터페이스를 구현할 수 있다. (수직적으로 데이터를 보여줄 수 있음)



1. 정적리스트 
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        List {
            Text("heart")
            Text("bolt")
            Text("star")
            
            /* 텍스트 말고 이미지를 넣어도 동일하게 작성 가능
            Text("heart")
            Image(systemName: "heart.fill")
            Image("sy").resizable().scaledToFit().frame(width: 30, height: 30)
            Circle().frame(width: 30, height: 30).foregroundColor(.pink)
            Text("bolt")
            Text("star")
            */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

정적리스트

2. 동적리스트
동적 콘텐츠를 사용하는 방법 3가지

1) Range<Int>

: Int 타입의 값을 넘겨주는 것

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        List {
            ForEach(0..<100){
                Text("number is \($0)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



2) RandomAccessCollection (랜덤 접근 컬렉션)
직역하면, "효율적인 랜덤 접근 인덱스 순회를 지원하는 컬렉션"
랜점 접근 컬렉쳔은 랜덤 접근 컬렉션 프로토콜로 되어있다.


인덱스 접근이기 때문에 데이터를 식별할 수 있도록 하기 위해서 id 식별자 지정, identifiable 프로토콜 두가지 방법 중 하나 제공해야 한다.
1. id 식별자 지정 -> UUID이용
: UUID는 범용 고유 식별자로, UUID 표준에 따라 이름 부여서 실제 사용상에서 중복될 가능성이 거의 없는 방법
2. identifiable 프로토콜
: 인스턴스가 안정적인 ID를 가진 엔터티의 값을 보유하는 유형의 클래스

identifiable 프로토콜에 대한 추가 설명
학생이라는 구조체 정의 후 학년, 나이, 이름이 같은 객체가 있다면, 두 개의 객체는 다른 객체임에도 불구하고 Equatable 프로토콜을 채택했을 경우 true가 된다. 이런 경우 ID 프로퍼티를 추가하여 두개를 구분할 수 있는데, 이렇게 id 프로퍼티 하나만 가지는 프로토콜이 identifiable 프로토콜이다. 


3) identifiable 프로토콜
    
