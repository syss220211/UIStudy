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

// butotn
private struct ButtonView: View {
    
    var state: String
    // 색상 변경 test
//    @State var buttonOn: Bool = false
//    @State var buttonOff: Bool
    
    var body: some View {
        
        Button {
//            buttonOn = true
//            buttonOff.toggle()
        } label: {
            Text(state)
                .frame(width: 100, height: 60)
                .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.black, lineWidth: 1)
                    )
                .foregroundColor(.black)
        }.padding(.trailing, 15)
        .background(.yellow)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
