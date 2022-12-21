//
//  Tab.swift
//  UIStudy
//
//  Created by 박서연 on 2022/12/21.
//

import SwiftUI

struct Tab: View {
    var body: some View {
        TabView {
            ReceivedView()
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
        }
    }
}

struct ReceivedView: View {
    var body: some View {
        Text("ReceivedView")
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
