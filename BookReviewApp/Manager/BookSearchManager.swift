//
//  BookSearchManager.swift
//  BookReviewApp
//
//  Created by JeongminKim on 2022/03/15.
//

import Foundation
import Alamofire

struct BookSearchManager {
    func request(from keyword: String, completionHandler: @escaping (([Book]) -> Void)) {
        guard let url = URL(string: "https://openapi.naver.com/v1/search/book.json") else { return }
        let parameters = BookSearchRequestModel(query: keyword)
        
        let headers: HTTPHeaders = [
            "X-Naver-Client-Id": "gxg5FUsGBBL3VqwT8C88",
            "X-Naver-Client-Secret": "KeKGMRmjwk"
        ]
        
        AF.request(
            url,
            method: .get,
            parameters: parameters,
            headers: headers
        )
        .responseDecodable(of: BookSearchResponseModel.self) { response in
            switch response.result {
            case .success(let result):
                completionHandler(result.items)
            case .failure(let error):
                print("BookSearchManager - request - error: \(error)")
            }
        }
        .resume()
    }
}
