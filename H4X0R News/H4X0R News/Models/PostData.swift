//
//  PostData.swift
//  H4X0R News
//
//  Created by Minadeo Robin on 15/10/2020.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points : Int
    let title: String
    let url: String?
}
