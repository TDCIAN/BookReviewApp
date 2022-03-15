//
//  MockUserDefaultsManager.swift
//  BookReviewAppTests
//
//  Created by JeongminKim on 2022/03/15.
//

import Foundation

@testable import BookReviewApp

final class MockUserDefaultsManager: UserDefaultsManagerProtocol {
    var isCalledGetReviews = false
    var isCalledSetReview = false
    
    func getReviews() -> [BookReview] {
        isCalledGetReviews = true
        return []
    }
    
    func setReview(_ newValue: BookReview) {
        isCalledSetReview = true
    }
}
