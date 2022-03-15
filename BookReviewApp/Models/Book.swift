//
//  Book.swift
//  BookReviewApp
//
//  Created by JeongminKim on 2022/03/15.
//

import Foundation

struct Book: Decodable {
    let title: String
    private let image: String?
    
    // 어차피 URL 받으면 킹피셔로 보여줄 거니까 바로 URL로 변환
    var imageURL: URL? { URL(string: image ?? "") }
}
