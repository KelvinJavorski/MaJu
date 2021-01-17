//
//  OnBoardingCollectionViewCell.swift
//  Vagas
//
//  Created by Kelvin Javorski Soares on 17/01/21.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var explanationTextLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var buttonBackground: UIView!
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        pageControl.currentPage += 1
    }
}
