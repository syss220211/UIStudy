//
//  ContentView.swift
//  UIStudy
//
//  Created by 박서연 on 2022/11/09.
//

import SwiftUI

struct ContentView: View {
    
    @State var animalAge: String = ""
    @State var animalName: String = ""
    
    @State var isShowingModal: Bool = false
    @State var clickAnimal: Bool = false
    
    var body: some View {
        NavigationView {
            // 강아지 고양이 선택
            VStack(){
                
                PetRowView()
                
                Spacer().frame(height: 20)
                
                // 정보입력
                VStack(alignment: .leading) {
                    
                    InputView(title: "나이 입력", placeholder: "나이를 입력해 주세요", animalInfo: $animalAge)
                    InputView(title: "이름 입력", placeholder: "이름을 입력해 주세요", animalInfo: $animalName)
                    
                    Divider()
                    
                    Text("품종 선택")
                        .bold()
                        .padding(.vertical, 10)
                    
                    Button {
                        isShowingModal = true
                    } label: {
                        Text("클릭하여 품종을 선택하여 주세요")
                            .frame(width: 330, height: 30)
                    }
                    .frame(width: 350, height: 40)
                    .tint(.gray)
                    .buttonStyle(.borderedProminent)
                    .sheet(isPresented: $isShowingModal) {
                        ModalView(modalState: $isShowingModal)
    //                        .presentationDetents([.medium, .large])
    //                        .presentationDragIndicator(.visible)
                            .presentationDetents([.fraction(0.3)])
                    }
                }
                Spacer().frame(height: 100)
                
                VStack {
                    
                    HStack() {
                        // 확인
                        Spacer()
                        
                        NavigationLink(destination: TestView()) {
                            
                            Button {
                                
                            } label: {
                                Text("확인")
                                    .font(.system(size: 20, weight: .light))
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth: .infinity, minHeight: 45)
                            .background(.gray)
                            .cornerRadius(10)
                        }
                        
                        Spacer()
                        
                        //로그아웃
                        Button {
                            
                        } label: {
                            Text("로그아웃")
                                .frame(width: 130, height: 30)
                        }
                        .tint(.gray)
                        .buttonStyle(.borderedProminent)
                        
                        Spacer()
                    }
                }
            }
            .padding()
        }
    }
}

struct PetRowView: View {
    
    var body: some View {
        
        HStack() {
            Spacer()
            VStack{
                Text("🐶")
                    .font(.system(size: 50, weight: .bold))
                    .frame(width: 120, height: 120)
                    .background(Color(.clear))
                    .cornerRadius(60)
                    .overlay(
                        RoundedRectangle(cornerRadius: 60).stroke(Color(.systemGray4), lineWidth: 1)
                    )
                Text("강아지")
            }
            Spacer()
            VStack{
                Text("🐱")
                    .font(.system(size: 50, weight: .bold))
                    .frame(width: 120, height: 120)
                    .background(Color(.clear))
                    .cornerRadius(60)
                    .overlay(
                        RoundedRectangle(cornerRadius: 60).stroke(Color(.systemGray4), lineWidth: 1)
                    )
                Text("고양이")
            }
            Spacer()
        }
    }
}

private struct InputView: View {
    
    var title: String
    var placeholder: String

    @Binding var animalInfo: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .bold()
            
        }
        
        TextField(placeholder, text: $animalInfo)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
