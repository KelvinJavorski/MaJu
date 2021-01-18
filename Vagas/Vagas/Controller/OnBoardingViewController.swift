//
//  OnBoardingViewController.swift
//  Vagas
//
//  Created by Kelvin Javorski Soares on 17/01/21.
//

import UIKit

class OnBoardingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "onboardingCell", for: indexPath) as! OnBoardingCollectionViewCell
        setupCell(cell: myCell)
        if (myCell.pageControl.currentPage == 0){
            myCell.imageView.image = UIImage(named: "onBoarding-1")
            myCell.titleTextLabel.text = "Encontre estágios feitos para você"
            myCell.explanationTextLabel.text = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa."
            
        }
        else if (myCell.pageControl.currentPage == 1){
            myCell.imageView.image = UIImage(named: "onboarding-2")
            myCell.titleTextLabel.text = "Empresas preocupadas com você"
            myCell.explanationTextLabel.text = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa."
            
        }
        else if (myCell.pageControl.currentPage == 2){
            myCell.imageView.image = UIImage(named: "onboarding-3")
            myCell.titleTextLabel.text = "Estágios Remotos"
            myCell.explanationTextLabel.text = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa."
            
        }
        else if (myCell.pageControl.currentPage == 3){
            myCell.imageView.image = UIImage(named: "onboarding-4")
            myCell.titleTextLabel.text = "Empresas com creche para a sua criança"
            myCell.explanationTextLabel.text = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa."
            
        }
        return myCell
    }
    
    func setupCell(cell: OnBoardingCollectionViewCell){
        cell.titleTextLabel.tintColor = UIColor(hexString: "#5BA092")
        cell.nextButton.tintColor = .black
        cell.nextButton.setTitle("Próximo", for: .normal)
        cell.buttonBackground.layer.borderWidth = 1
        cell.buttonBackground.layer.cornerRadius = 10
    }
    
    @IBAction func skipTutorialPressed(_ sender: Any) {
        
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        collectionView.reloadData()
    }
    
}

extension OnBoardingViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return view.frame.size
    }
    
    func centerItemsInCollectionView(cellWidth: Double, numberOfItems: Double, spaceBetweenCell: Double, collectionView: UICollectionView) -> UIEdgeInsets {
        let totalWidth = cellWidth * numberOfItems
        let totalSpacingWidth = spaceBetweenCell * (numberOfItems - 1)
        let leftInset = (collectionView.frame.width - CGFloat(totalWidth + totalSpacingWidth)) / 2
        let rightInset = leftInset
        return UIEdgeInsets(top: 0, left: leftInset, bottom: 0, right: rightInset)
    }
    
}
