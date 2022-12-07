//
//  DiseaseView.swift
//  UIStudy
//
//  Created by 박서연 on 2022/12/06.
//

import SwiftUI

struct DiseaseView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            // 치석
            Text("치석 단계를 선택해주세요")
                .padding(.bottom, 15)
            HStack{
                ButtonView(state: "없음")
                ButtonView(state: "경증")
                ButtonView(state: "중증")
                
            }.padding(.bottom, 50)
            
            // 염증
            Text("염증 여부를 선택해주세요")
                .padding(.bottom, 15)
            HStack {
                ButtonView(state: "없음")
                ButtonView(state: "있음")
            }.padding(.bottom, 50)
            
            // 종양
            Text("종양 여부를 선택해주세요")
                .padding(.bottom, 15)
            HStack {
                ButtonView(state: "없음")
                ButtonView(state: "있음")
            }
            
            
        }
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
            .background(Color(.yellow))
    }
}
