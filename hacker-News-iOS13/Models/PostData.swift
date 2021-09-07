//
//  PostData.swift
//  hacker-News-iOS13
//
//  Created by Yarkın Gazibaba on 4.09.2021.
//

import Foundation

struct Results: Decodable {
    let hits:[Post]
}

struct Post: Decodable,Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title:String
    let url:String?
}
