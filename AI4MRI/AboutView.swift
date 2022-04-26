//
//  AboutView.swift
//  AI4MRI
//
//  Created by Neha Shaik on 4/25/22.
//

import SwiftUI

struct AboutView: View {
  var body: some View {
    WebView(url: URL(string: "https://sites.google.com/view/ai4mri/home")!)
  }
}

struct AboutView2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("About AI4MRI")
                    .font(.system(size: 40))
                ScrollView {
                    Text("Brain tumors are the 10th leading cause of death for men and women, as well as the leading cause of cancer-related deaths for children. They can be diagnosed by radiologists, who analyze MRI scans. However, the process for diagnosing brain tumors takes a few weeks, and it can take even longer in parts of the world with a lack of trained radiologists. AI4MRI addresses these issues by using artificial intelligence to analyze MRI scans, therefore reducing the diagnosis time significantly.")
                        .font(.system(size: 20))
                        .scaledToFit()
                    Text("https://sites.google.com/view/braintumordetection/home")
                        .font(.system(size: 20))
                        .scaledToFit()
                }
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
