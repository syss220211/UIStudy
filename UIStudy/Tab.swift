//
//  Tab.swift
//  UIStudy
//
//  Created by 박서연 on 2022/12/21.
//

import SwiftUI

struct Tab: View {
    
    @State var isShowingModal: Bool = true
    
    var body: some View {
        
        TabView {
            ReceivedView(modalState: $isShowingModal)
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            SentView()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            AccountView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }.accentColor(.yellow) // 선택시 바뀌는 color 변경
    }
}

struct ReceivedView: View {
    
    @Binding var modalState: Bool
    
    var body: some View {
        Text("ReceivedView")
        Button {
            modalState = false
            
        } label: {
            Text("닫기")
                .frame(width: 200, height: 30)
        }
//        VStack {
//            Text("품종선택.. ?")
//
//
//        }
    }
}

struct SentView: View {
    var body: some View {
        Text("SentView")
    }
}

struct AccountView: View {
    var body: some View {
        Text("AccountView")
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
