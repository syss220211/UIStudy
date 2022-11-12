## Navigation VieW

View에 Navigation 추가하기

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


struct DetailView: View {
    var body: some View {
        List {
            ForEach(0...9, id: \.self){
                Text("숫자 : \($0)")
            }
        }
        .navigationTitle("Detail")
    }
}

struct ContentView: View {
    
    let people: [Person] =
        [Person(name: "서연", imageName: "heart"),
        Person(name: "히주", imageName: "heart.fill"),
        Person(name: "유라", imageName: "bolt")]

    @State private var multiSelection = Set<UUID>()
 
    var body: some View {
        
        // NavigationView
        NavigationView {
            NavigationLink("Second View!") {
                // 이동을 누르면 이동했습니다로 이동
//                Text("이동했습니다!")
//                DetailView()
                List(people, selection: $multiSelection) {Person in
                    HStack{
                        PersonRow(personrow: Person)
                    }
                }
                .toolbar { EditButton() }
                .navigationTitle("Friend List")
            }
            .navigationTitle("First View")
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```
