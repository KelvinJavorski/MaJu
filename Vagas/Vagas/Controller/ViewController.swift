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

class ViewController: UIViewController, GIDSignInDelegate{
    
    @IBOutlet var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance()?.delegate = self
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if (error == nil) {
            guard let authentication = user.authentication else { return }
            let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
            
            Auth.auth().signIn(with: credential) { (authResult, error) in
                if let error = error {
                    return
                }
            }
            performSegue(withIdentifier: "inscrição", sender: nil)
            //                GIDSignIn.sharedInstance().signOut()
            
        } else {
            print(error.localizedDescription)
        }
    }
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
        if let error = error{
            print(error.localizedDescription)
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
