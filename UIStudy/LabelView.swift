//
//  LabelView.swift
//  UIStudy
//
//  Created by 박서연 on 2022/12/04.
//

import SwiftUI

struct LabelView: View {
    
//    @State var buttonState: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                // 치석
                Text("치석 단계를 선택해주세요")
                    .padding(.bottom, 15)
                
                HStack{
                    ButtonView(state: "없음")
                    ButtonView(state: "경증")
                    ButtonView(state: "중증")
                    
                }.padding(.bottom, 30)
                
                // 염증
                Text("염증 여부를 선택해주세요")
                    .padding(.bottom, 15)
                HStack {
                    ButtonView(state: "없음")
                    ButtonView(state: "있음")
                }.padding(.bottom, 30)
                
                // 종양
                Text("종양 여부를 선택해주세요")
                    .padding(.bottom, 15)
                HStack {
                    ButtonView(state: "없음")
                    ButtonView(state: "있음")
                }.padding(.bottom, 30)
                
                Group {
                    ButtonLabel(question: "질문1", selectButton: "있음")
                    ButtonLabel(question: "질문2", selectButton: "있음")
                    ButtonLabel(question: "질문3", selectButton: "있음")
                    ButtonLabel(question: "질문4", selectButton: "있음")
                    ButtonLabel(question: "질문5", selectButton: "있음")
                    ButtonLabel(question: "질문1", selectButton: "있음")
                    ButtonLabel(question: "질문6", selectButton: "있음")
                    ButtonLabel(question: "질문7", selectButton: "있음")
                    ButtonLabel(question: "질문8", selectButton: "있음")
                    ButtonLabel(question: "질문9", selectButton: "있음")
//                    ButtonLabel(question: "질문1", selectButton: "있음")
                }
                ButtonLabel(question: "질문10", selectButton: "있음")
                ButtonLabel(question: "질문11", selectButton: "있음")
            }
        }
    }
}

private struct ButtonLabel: View {
    
    var question: String
    var selectButton: String
    
    var body: some View {
        Text(question)
            .padding(.bottom, 15)
        HStack {
            ButtonView(state: selectButton)
            ButtonView(state: selectButton)
        }.padding(.bottom, 30)
    }
}

// butotn
private struct ButtonView: View {
    
    var state: String
    
    var body: some View {
        
        Button {
        } label: {
            Text(state)
                .frame(width: 100, height: 60)
                .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.black, lineWidth: 1)
                    )
                .foregroundColor(.black)
        }.padding(.trailing, 15)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
