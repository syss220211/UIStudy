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


## 리스트 Section Header, Footer 활용하기
```
import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let name: String
}

private var Friend = [
    Person(name: "Syeon"),
    Person(name: "Heejo"),
    Person(name: "Yoora")
]

private var Family = [
    Person(name: "Swon"),
    Person(name: "Hyeon")
]

struct ContentView: View {
 
    var body: some View {
        List {
            Section(header: Text("Friend"), footer: Text("2")) {
                ForEach(Friend) { friend in
                    Text(friend.name)
                }
            }
            Section(header: Text("Family")) {
                ForEach(Family) { family in
                    Text(family.name)
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
