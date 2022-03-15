//
//  ReviewListPresenter.swift
//  BookReviewApp
//
//  Created by JeongminKim on 2022/03/15.
//

import UIKit

// MVP에서 Model을 업데이트 했다는 것을 ViewController로 알릴 때 델리게이트를 사용한다
protocol ReviewListProtocol {
    func setupNavigationBar()
    func setupViews()
}

final class ReviewListPresenter: NSObject {
    private let viewController: ReviewListProtocol
    
    init(viewController: ReviewListProtocol) {
        self.viewController = viewController
    }
    
    func viewDidLoad() {
        viewController.setupNavigationBar()
        viewController.setupViews()
    }
}

extension ReviewListPresenter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = "\(indexPath)"
        return cell
    }
    
    
}