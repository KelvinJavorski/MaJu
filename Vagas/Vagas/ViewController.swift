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
        
        if(GIDSignIn.sharedInstance()?.currentUser != nil){
            //signed in
        }
        else{
            GIDSignIn.sharedInstance()?.signIn()
        }
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
    }
    
}

