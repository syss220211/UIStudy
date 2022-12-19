//
//  AlertView.swift
//  UIStudy
//
//  Created by 박서연 on 2022/12/19.
//

import SwiftUI

struct AlertView: View {
    
    @State var isShowingAlert: Bool = false
    @State var showingAlert = false
    
    var body: some View {
        VStack{
            
            // iOS 14 까지
            Button {
                isShowingAlert = true
            } label: {
                Text("누르면 alert?")
            }
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text("Title"), message: Text("message"))
            }
            
            // iOS 15부터
            Button("Alert?") {
                showingAlert = true
            }
            .alert("alert content", isPresented: $showingAlert) {
                Button("alert button", role: .destructive) {
                    // .destructive : alert button 이 빨간색
                }
                Button("??", role: .cancel){
                    // role 차이점 확인
                }
            }
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
