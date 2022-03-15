//
//  MockReviewListViewController.swift
//  BookReviewAppTests
//
//  Created by JeongminKim on 2022/03/15.
//

import Foundation

@testable import BookReviewApp

// 이 가짜 클래스를 만든 목적은 프로토콜의 메소드가 프레젠터에서 불려졌는지 여부만 판단하는 게 목적임
final class MockReviewListViewController: ReviewListProtocol {
    var isCalledSetupNavigationBar = false
    var isCalledSetupViews = false
    var isCalledPresentToReviewWriteViewController = false
    var isCalledReloadTableView = false
    
    func setupNavigationBar() {
        isCalledSetupNavigationBar = true
    }
    
    func setupViews() {
        isCalledSetupViews = true
    }
    
    func presentToReviewWriteViewController() {
        isCalledPresentToReviewWriteViewController = true
    }
    
    func reloadTableView() {
        isCalledReloadTableView = true
    }
    
}
