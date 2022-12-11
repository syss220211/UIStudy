//
//  DiseaseView.swift
//  UIStudy
//
//  Created by 박서연 on 2022/12/06.
//

import SwiftUI

struct DiseaseView: View {
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                
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

struct DiseaseView_Previews: PreviewProvider {
    static var previews: some View {
        DiseaseView()
        
        
    }
}

// butotn
private struct ButtonView: View {
    
    var state: String
    
    var body: some View {
        
        Button {
            
        } label: {
            Text(state)
                .frame(width: 70, height: 30)
                .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.black, lineWidth: 1)
                    )
                .foregroundColor(.black)
        }.padding(.trailing, 15)
    }
}
