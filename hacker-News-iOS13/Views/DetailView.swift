//
//  DetailView.swift
//  hacker-News-iOS13
//
//  Created by Yarkın Gazibaba on 4.09.2021.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.facebook.com")
    }
}



