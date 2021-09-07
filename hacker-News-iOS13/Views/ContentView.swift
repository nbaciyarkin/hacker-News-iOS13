//
//  ContentView.swift
//  hacker-News-iOS13
//
//  Created by Yarkın Gazibaba on 4.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject  var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(
                    destination: DetailView(url: post.url), label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
            }
            .navigationBarTitle("DEVELOPER NEWS")
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



