//
//  ReviewWriteViewController.swift
//  BookReviewApp
//
//  Created by JeongminKim on 2022/03/15.
//

import UIKit
import SnapKit

final class ReviewWriteViewController: UIViewController {
    private lazy var presenter = ReviewWritePresenter(viewController: self)
}

extension ReviewWriteViewController: ReviewWriteProtocol {
    
}
