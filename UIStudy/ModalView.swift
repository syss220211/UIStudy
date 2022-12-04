//
//  ModalView.swift
//  UIStudy
//
//  Created by 박서연 on 2022/12/04.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var modalState: Bool
    
    var body: some View {
        VStack {
            Text("품종선택.. ?")
            
            Button {
                
                modalState = false
                
            } label: {
                Text("닫기")
                    .frame(width: 200, height: 30)
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(modalState: .constant(false))
    }
}
