//
//  BookSearchRequestModel.swift
//  BookReviewApp
//
//  Created by JeongminKim on 2022/03/15.
//

import Foundation

struct BookSearchRequestModel: Codable {
    /// 검색할 책 키워드
    let query: String
}


