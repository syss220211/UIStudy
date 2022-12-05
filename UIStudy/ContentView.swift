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
    @State var clickCheck: Bool = false
    
    var body: some View {
        NavigationView {
            // 강아지 고양이 선택
            VStack(){
                
                PetRowView()
                Spacer().frame(height: 20)
                
                // 정보입력
                VStack(alignment: .leading) {
                    
                    InputView(title: "나이 입력", placeholder: "나이를 입력해 주세요", animalInfo: $animalAge)
                    Divider()
                    
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
                    /* 단순 full modal
                     .sheet(isPresented: $isShowingModal) {
                                 Text("open modal!")
                             }
                     */
                    // 하프 모달
                    .sheet(isPresented: $isShowingModal) {
                        ModalView(modalState: $isShowingModal) //닫기 위해 modalState로 값 받기
    //                        .presentationDetents([.medium, .large]) // half modal
    //                        .presentationDragIndicator(.visible) // 내리는 bar false, true
                            .presentationDetents([.fraction(0.3)]) // 비율로 조정
                    }
                }
                Spacer().frame(height: 100)
                
                VStack {
                    
                    HStack() {
                        // 확인
                        Spacer()
                        
                        NavigationLink(destination: LabelView()) {
                            
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
                                .font(.system(size: 20, weight: .light))
                                .foregroundColor(.white)
//                                .frame(width: 130, height: 30)
                        }
//                        .tint(.gray)
//                        .buttonStyle(.borderedProminent)
                        .frame(maxWidth: .infinity, minHeight: 45)
                        // .infinity => 화면이 가로로 넓어지는 경우를 대비해서 spcaer로 공간주고 width는 infinity 주기
                        .background(.gray)
                        .cornerRadius(10)
                        
                        Spacer() // spacer 로 3개 자동으로 나누어주기
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
        // 값을 받아야 하니까 $로 감싸기
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
