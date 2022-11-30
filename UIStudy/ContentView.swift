//
//  ContentView.swift
//  UIStudy
//
//  Created by 박서연 on 2022/11/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var animalAge: String = ""
    @State var isShowingModal: Bool = false
    @State var clickAnimal: Bool = false
    var emojis: [String] = ["🐶", "🐱"]
    
    var body: some View {
        
        // 강아지 고양이 선택
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
//                    Text("강아지")
//                        .bold()
//                }
                Spacer().frame(width: 40)
                VStack{
                    Text(emojis[1])
                        .font(.system(size: 80))
                        .padding(10)
                    Text("고양이")
                        .bold()
                }
            }
            Spacer().frame(height: 50)
            
            // 정보입력
            VStack(alignment: .leading){
                HStack {
                    Text("나이입력")
                        .bold()
                }
                HStack{
                    TextField("나이를 입력하여 주세요. (소숫점 불가)", text: $animalAge)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .lineSpacing(10)
                }
                Spacer().frame(height: 40)
                
                HStack {
                    Text("품종 선택")
                        .bold()
                }
                HStack{
                    Button {
                        isShowingModal = true
                    } label: {
                        Text("클릭하여 품종을 선택하여 주세요")
                            .frame(width: 330, height: 30)
                    }
                    .frame(width: 350, height: 40)
                    .tint(.gray)
                    .buttonStyle(.borderedProminent)
                    .sheet(isPresented: $isShowingModal){
                        Text("품종선택.. ?")
                    }
                }
            }
            Spacer().frame(height: 100)
            VStack{
                HStack() {
                    // 확인
                    Button {
                        
                    } label: {
                        Text("확인")
                            .frame(width: 130, height: 30)
                    }
                    .tint(.gray)
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                    
                    //로그아웃
                    Button {
                        
                    } label: {
                        Text("로그아웃")
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
