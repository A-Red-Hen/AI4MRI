//
//  MultiTabView.swift
//  AI4MRI
//
//  Created by Neha Shaik on 4/25/22.
//

import SwiftUI

struct MultiTabView: View {
    var body: some View {
        TabView {
            IntroductionView()
                .tabItem {
                    Label("Information", systemImage: "info")
                }
            AIView()
                .tabItem {
                    Label("Check MRI Scan", systemImage: "play.fill")
                }
            AboutView()
                .tabItem {
                    Label("About", systemImage: "person.fill")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MultiTabView()
    }
}
