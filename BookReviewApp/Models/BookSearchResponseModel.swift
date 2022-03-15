//
//  BookSearchResponseModel.swift
//  BookReviewApp
//
//  Created by JeongminKim on 2022/03/15.
//

import Foundation

struct BookSearchResponseModel: Decodable {
    var items: [Book] = []
}

