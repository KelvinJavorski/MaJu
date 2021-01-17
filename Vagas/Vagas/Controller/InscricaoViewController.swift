//
//  InscricaoViewController.swift
//  Vagas
//
//  Created by Kelvin Javorski Soares on 17/01/21.
//

import UIKit

class InscricaoViewController: UIViewController {

    let loginView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Seu nome"
        return textField
    }()
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Seu email"
        return textField
    }()
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password (MIN 8 CARACTERS)"
        return textField
    }()
    let confirmButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Cadastrar", for: .normal)
        button.addTarget(
            self, action:
            #selector(confirmButtonPressed),
            for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLoginContentView()
        
        
    }
    
    @objc func confirmButtonPressed(sender: UIButton!){
        
    }
    
}

extension InscricaoViewController{
    func setupLoginContentView() {
        view.addSubview(loginView)
        loginView.addSubview(nameTextField)
        loginView.addSubview(emailTextField)
        loginView.addSubview(passwordTextField)
        loginView.addSubview(confirmButton)
        loginView.translatesAutoresizingMaskIntoConstraints = false
        loginView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        setupEmailTextField()
        setupPasswordTextField()
        setupconfirmButton()
    }
    
    func setupNameTextField() {
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.isUserInteractionEnabled = true
        nameTextField.backgroundColor = .white
        nameTextField.frame.size.width = 200
        nameTextField.frame.size.height = 20
        nameTextField.topAnchor.constraint(
            equalTo: loginView.topAnchor,
            constant: 40).isActive = true
        nameTextField.centerXAnchor.constraint(
            equalTo: loginView.centerXAnchor).isActive = true
        nameTextField.widthAnchor.constraint(
            equalToConstant: 300).isActive = true
        nameTextField.heightAnchor.constraint(
            equalToConstant: 40).isActive = true
    }
    
    func setupEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.isUserInteractionEnabled = true
        emailTextField.backgroundColor = .white
        emailTextField.frame.size.width = 200
        emailTextField.frame.size.height = 20
        emailTextField.topAnchor.constraint(
            equalTo: loginView.topAnchor,
            constant: 40).isActive = true
        emailTextField.centerXAnchor.constraint(
            equalTo: loginView.centerXAnchor).isActive = true
        emailTextField.widthAnchor.constraint(
            equalToConstant: 300).isActive = true
        emailTextField.heightAnchor.constraint(
            equalToConstant: 40).isActive = true
    }
    
    func setupPasswordTextField() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.isUserInteractionEnabled = true
        passwordTextField.backgroundColor = .white
        passwordTextField.frame.size.width = 200
        passwordTextField.frame.size.height = 20
        passwordTextField.topAnchor.constraint(
            equalTo: emailTextField.bottomAnchor,
            constant: 40).isActive = true
        passwordTextField.centerXAnchor.constraint(
            equalTo: loginView.centerXAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(
            equalToConstant: 300).isActive = true
        passwordTextField.heightAnchor.constraint(
            equalToConstant: 40).isActive = true
    }
    func setupconfirmButton() {
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.isUserInteractionEnabled = true
        confirmButton.backgroundColor = .white
        confirmButton.frame.size.width = 100
        confirmButton.frame.size.height = 30
        confirmButton.topAnchor.constraint(
            equalTo: passwordTextField.bottomAnchor,
            constant: 40).isActive = true
        confirmButton.centerXAnchor.constraint(
            equalTo: loginView.centerXAnchor).isActive = true
        confirmButton.widthAnchor.constraint(
            equalToConstant: 100).isActive = true
        confirmButton.heightAnchor.constraint(
            equalToConstant: 30).isActive = true
    }
}
