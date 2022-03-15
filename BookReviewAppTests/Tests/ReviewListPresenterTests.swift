//
//  BookReviewAppTests.swift
//  BookReviewAppTests
//
//  Created by JeongminKim on 2022/03/15.
//

import XCTest
@testable import BookReviewApp

class ReviewListPresenterTests: XCTestCase {
    // 테스트의 경우 문제를 파악하는 것이 목적이기 때문에 옵셔널로 하는 것보다 강제 언래핑이 더 낫다.
    // sut는 Subject under test의 줄임말
    var sut: ReviewListPresenter!
    var viewController: MockReviewListViewController!
    var userDefaultsManager: MockUserDefaultsManager!
    
    override func setUp() {
        super.setUp()
        
        viewController = MockReviewListViewController()
        userDefaultsManager = MockUserDefaultsManager()
        
        sut = ReviewListPresenter(
            viewController: viewController,
            userDefaultsManager: userDefaultsManager
        )
    }
    
    override func tearDown() {
        print("ReviewListPresenterTests - tearDown()")
        sut = nil
        viewController = nil
        super.tearDown()
    }
    
    func test_viewDidLoad가_호출될_때() {
        sut.viewDidLoad()
        
        XCTAssertTrue(viewController.isCalledSetupNavigationBar)
        XCTAssertTrue(viewController.isCalledSetupViews)
    }
    
    func test_viewWillAppear가_호출될_때() {
        sut.viewWillAppear()
        
        XCTAssertTrue(userDefaultsManager.isCalledGetReviews)
        XCTAssertTrue(viewController.isCalledReloadTableView)
    }
    
    func test_didTapRightBarButtonItem이_호출될_때() {
        sut.didTapRightBarButtonItem()
        
        XCTAssertTrue(viewController.isCalledPresentToReviewWriteViewController)
    }
}




