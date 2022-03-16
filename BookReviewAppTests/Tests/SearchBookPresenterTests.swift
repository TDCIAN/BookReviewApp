//
//  SearchBookPresenterTests.swift
//  BookReviewAppTests
//
//  Created by JeongminKim on 2022/03/16.
//

import XCTest

@testable import BookReviewApp

class SearchBookPresenterTests: XCTestCase {
    var sut: SearchBookPresenter!
    var viewController: MockSearchBookViewController!
    
    override func setUp() {
        super.setUp()
        
        viewController = MockSearchBookViewController()
        
        sut = SearchBookPresenter(
            viewController: viewController,
            delegate: viewController
        )
    }
    
    override func tearDown() {
        sut = nil
        viewController = nil
        super.tearDown()
    }
    
    func test_viewDidLoad가_호출될_때() {
        sut.viewDidLoad()
        XCTAssertTrue(viewController.isCalledSetupViews)
    }
    
    func test_searchBarSearchButtonClicked가_호출될_때() {
        XCTAssertTrue(sut.responds(to: #selector(sut.searchBarSearchButtonClicked(_:))))
    }
    
}

final class MockSearchBookViewController: SearchBookProtocol, SearchBookDelegate {
    var isCalledSetupViews = false
    var isCalledDismiss = false
    var isCalledReloadView = false
    var isCalledSelectBook = false
    
    func setupViews() {
        isCalledSetupViews = true
    }
    
    func dismiss() {
        isCalledDismiss = true
    }
    
    func reloadView() {
        isCalledReloadView = true
    }
    
    func selectBook(_ book: Book) {
        isCalledSelectBook = true
    }
}
