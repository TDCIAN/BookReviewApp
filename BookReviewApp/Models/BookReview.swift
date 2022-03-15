//
//  BookReview.swift
//  BookReviewApp
//
//  Created by JeongminKim on 2022/03/15.
//

import Foundation

struct BookReview: Codable {
    let title: String
    let contents: String
    let imageURL: URL?
}
