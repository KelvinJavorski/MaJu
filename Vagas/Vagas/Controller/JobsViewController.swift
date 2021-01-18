//
//  JobsViewController.swift
//  Vagas
//
//  Created by Kelvin Javorski Soares on 17/01/21.
//

import UIKit

class JobsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    @IBOutlet weak var adicionadosLabel: UILabel!
    
    @IBOutlet weak var closerJobsCollection: UICollectionView!
    @IBOutlet weak var otherJobsCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        closerJobsCollection.delegate = self
        closerJobsCollection.dataSource = self
        otherJobsCollection.delegate = self
        otherJobsCollection.dataSource = self
        adicionadosLabel.textColor = UIColor(hexString: "#5BA092")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == closerJobsCollection){
            return 1
        }
        else{
            return 6
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == closerJobsCollection{
            let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "closerJobs", for: indexPath) as! CloserJobsCollectionViewCell
            setupCloserCell(cell: myCell)
            return myCell
        }
        else if collectionView == otherJobsCollection{
            let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "otherJobs", for: indexPath) as! OtherJobsCollectionViewCell
            setupOtherCell(cell: myCell)
            myCell.imageView.image = UIImage(named: "summer")
            if (indexPath.row == 0){
                myCell.empresaLabel.text = "Banco do João"
            }
            if (indexPath.row == 1){
                myCell.empresaLabel.text = "Banca da Stefi"
            }
            if (indexPath.row == 2){
                myCell.empresaLabel.text = "Jardim do Otavio"
            }
            if (indexPath.row == 3){
                myCell.empresaLabel.text = "Papelaria Lêtudo"
            }
            if (indexPath.row == 4){
                myCell.empresaLabel.text = "Ebanx"
            }
            else{
                myCell.empresaLabel.text = "UP"
            }
            return myCell
        }
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == closerJobsCollection){
            return collectionView.frame.size
        }else{
            return CGSize(width: view.frame.size.width * 0.9, height: 105)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (collectionView == otherJobsCollection){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "details")
            self.navigationItem.backButtonDisplayMode = .default
            self.present(viewController, animated: true) {
                return
            }
        }
    }
    
    func setupOtherCell(cell: OtherJobsCollectionViewCell){
        cell.cardView.layer.borderWidth = 0
        cell.cardView.layer.cornerRadius = 10
        cell.cardView.layer.borderColor = UIColor(hexString: "#1F213C").cgColor
        cell.cardView.layer.shadowOpacity = 0.3
        cell.cardView.layer.shadowRadius = 5
        cell.cardView.layer.shadowOffset = CGSize(width: 0, height: 5)
    }
    
    func setupCloserCell(cell: CloserJobsCollectionViewCell){
        cell.titleLabel.textColor = UIColor(hexString: "#5BA092")
        
        cell.cardView.layer.cornerRadius = 20
        cell.cardView.layer.borderColor = UIColor(hexString: "#1F213C").cgColor
        cell.cardView.layer.shadowOpacity = 0.3
        cell.cardView.layer.shadowRadius = 5
        cell.cardView.layer.shadowOffset = CGSize(width: 0, height: 5)
        
        cell.secondCardView.layer.cornerRadius = 20
        cell.secondCardView.layer.borderColor = UIColor(hexString: "#1F213C").cgColor
        cell.secondCardView.layer.shadowOpacity = 0.3
        cell.secondCardView.layer.shadowRadius = 5
        cell.secondCardView.layer.shadowOffset = CGSize(width: 0, height: 5)
        
        cell.thirdCardView.layer.cornerRadius = 20
        cell.thirdCardView.layer.borderColor = UIColor(hexString: "#1F213C").cgColor
        cell.thirdCardView.layer.shadowOpacity = 0.3
        cell.thirdCardView.layer.shadowRadius = 5
        cell.thirdCardView.layer.shadowOffset = CGSize(width: 0, height: 5)
        
    }
}
