//
//  ViewController.swift
//  Vagas
//
//  Created by Kelvin Javorski Soares on 17/01/21.
//

import UIKit
import FirebaseDatabase
import GoogleSignIn
import FirebaseAuth

class ViewController: UIViewController{
    
    @IBOutlet var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
        if(GIDSignIn.sharedInstance()?.currentUser != nil){
            print(GIDSignIn.sharedInstance().currentUser.profile.name)
        }
        else{
            GIDSignIn.sharedInstance()?.signIn()
        }
        

    }
    
}

//class ViewController: UIViewController {
//
//    private let database = Database.database().reference()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let button = UIButton(frame: CGRect(x: 20, y: 200, width: view.frame.size.width-40, height: 50))
//                button.setTitle("Add Entry", for: .normal)
//                button.setTitleColor(.white, for: .normal)
//                button.backgroundColor = .link
//                view.addSubview(button)
//                button.addTarget(self, action: #selector(addNewEntry), for: .touchUpInside)
//    }
//
//    @objc private func addNewEntry(){
//            let object: [String: Any] = [
//                "name": "IOS",
//                "Youtube" : "yes"
//            ]
//            database.child("Teste").setValue(object)
//        }
//
//}
