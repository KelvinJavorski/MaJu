//
//  DetailsViewController.swift
//  Vagas
//
//  Created by Kelvin Javorski Soares on 17/01/21.
//

import UIKit

class DetailsViewController: UIViewController {

    var empresaName: String?
    var jobType: String?
    var salary: Double?
    var workload: Int?
    var empresaDescription: String?
    var beneficios: String?
    @IBOutlet weak var buttonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonView()
    }

    func setupButtonView(){
        buttonView.layer.borderColor = UIColor(hexString: "#808080").cgColor
        buttonView.layer.borderWidth = 0.5
        buttonView.layer.cornerRadius = 10
        
    }
}
