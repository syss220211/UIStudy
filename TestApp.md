Test app MD


```
import SwiftUI

struct ContentView: View {
    
    @State var animalAge: String = ""
    @State var isShowingModal: Bool = false
    @State var clickAnimal: Bool = false
    var emojis: [String] = ["πΆ", "π±"]
    
    var body: some View {
        
        // κ°μμ§ κ³ μμ΄ μ ν
        VStack(){
            HStack(){
//                VStack{
                    Button {
                        clickAnimal = true
//                        self.background(Color.yellow)
    
                    } label: {
                        Text(emojis[0])
                            .font(.system(size: 80))
                            .padding(10)
//                            .self.background(Color.red)
//                            .background(Color.yellow)
                            .cornerRadius(70)
                            .frame(width: 130, height: 130)
                    }

//                    Text(emojis[0])
//                        .font(.system(size: 80))
//                        .padding(10)
//                        .background(Color.white)
//                        .cornerRadius(70)
//                        .frame(width: 130, height: 130)
//                    Text("κ°μμ§")
//                        .bold()
//                }
                Spacer().frame(width: 40)
                VStack{
                    Text(emojis[1])
                        .font(.system(size: 80))
                        .padding(10)
                    Text("κ³ μμ΄")
                        .bold()
                }
            }
            Spacer().frame(height: 50)
            
            // μ λ³΄μλ ₯
            VStack(alignment: .leading){
                HStack {
                    Text("λμ΄μλ ₯")
                        .bold()
                        .frame(height: 30)
                }
                HStack{
                    TextField("λμ΄λ₯Ό μλ ₯νμ¬ μ£ΌμΈμ. (μμ«μ  λΆκ°)", text: $animalAge)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .lineSpacing(10)
                }
                Spacer().frame(height: 40)
                
                HStack {
                    Text("νμ’ μ ν")
                        .bold()
                }
                HStack{
                    Button {
                        isShowingModal = true
                    } label: {
                        Text("ν΄λ¦­νμ¬ νμ’μ μ ννμ¬ μ£ΌμΈμ")
                            .frame(width: 330, height: 30)
                    }
                    .frame(width: 350, height: 40)
                    .tint(.gray)
                    .buttonStyle(.borderedProminent)
                    .sheet(isPresented: $isShowingModal){
                        Text("νμ’μ ν.. ?")
                    }
                }
            }
            Spacer().frame(height: 100)
            VStack{
                HStack() {
                    // νμΈ
                    Button {
                        
                    } label: {
                        Text("νμΈ")
                            .frame(width: 130, height: 30)
                    }
                    .tint(.gray)
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                    
                    //λ‘κ·Έμμ
                    Button {
                        
                    } label: {
                        Text("λ‘κ·Έμμ")
                            .frame(width: 130, height: 30)
                    }
                    .tint(.gray)
                    .buttonStyle(.borderedProminent)
                }
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```
