//
//  LabelView.swift
//  UIStudy
//
//  Created by 박서연 on 2022/12/04.
//

import SwiftUI

struct LabelView: View {
    
    
    var body: some View {
        VStack{
            
            Text("치석 단계를 선택해주세요")
                .padding(.bottom, 20)
            
            HStack{
                
                ButtonView(state: "없음")
                ButtonView(state: "경증")
                ButtonView(state: "중증")
                
            }
        }
    }
}

private struct ButtonView: View {
    
    var state: String
    
    var body: some View {
        
        Button {
        
        } label: {
            Text(state)
                .frame(width: 100, height: 50)
                .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.black, lineWidth: 1)
                    )
                .foregroundColor(.black)
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
