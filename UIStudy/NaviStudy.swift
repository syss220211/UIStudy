//
//  NaviStudy.swift
//  UIStudy
//
//  Created by 박서연 on 2022/12/12.
//

import SwiftUI

struct NaviStudy: View {
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 30){
                Text("content?")
//                    .padding(.bottom, 30)
                // 화면 이동
                NavigationLink(destination: Text("NavigaitonLink")) {
                    Text("누르면 이동")
                }
                
                NavigationLink(destination: SampleView(sample: "이동 페이지")) {
                    Text("Navigation Link, 누르면 이동")
                }
                
            }
            .navigationTitle("Title")
            .navigationBarTitleDisplayMode(.automatic)
        }
        
        
    }
}

struct SampleView: View {
    
    var sample: String
    
    var body: some View {
        Text("\(sample) is showed!")
    }
}


struct NaviStudy_Previews: PreviewProvider {
    static var previews: some View {
        NaviStudy()
    }
}
