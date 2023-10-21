//
//  ViewController.swift
//  Start1
//
//  Created by Дмитрий Богатырев on 22.10.2023.
//

import UIKit
import SwiftUI

class LoginViewController: UIViewController {
    
    lazy var loginLabel: UILabel = {
       let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 36)
        label.translatesAutoresizingMaskIntoConstraints  = false
        return label
    }()
    
    lazy var loginTextField: UITextField = {
       let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter you name"
        textField.setLeftIcon(UIImage(systemName: "person"))
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
       let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter you password"
        textField.setLeftIcon(UIImage(systemName: "lock"))
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var forgotPasswordLabel: UILabel = {
        let label = UILabel()
         label.text = "Forgot your password?"
         label.textColor = .white
         label.textAlignment = .center
         label.font = .boldSystemFont(ofSize: 18)
         label.translatesAutoresizingMaskIntoConstraints  = false
         return label
    }()
    
    lazy var dontHaveAccountLabel: UILabel = {
        let label = UILabel()
         label.text = "Don't have account?"
         label.textColor = .white
         label.textAlignment = .center
         label.font = .boldSystemFont(ofSize: 18)
         label.translatesAutoresizingMaskIntoConstraints  = false
         return label
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var facebookButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("facebook", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var appleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("apple", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var orContinueLabel: UILabel = {
        let label = UILabel()
         label.text = "Or continue in"
         label.textColor = .white
         label.textAlignment = .center
         label.font = .boldSystemFont(ofSize: 18)
         label.translatesAutoresizingMaskIntoConstraints  = false
         return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureConstraints()
      
    }
    
    private func configureUI() {
        view.backgroundColor = UIColor(patternImage: UIImage(named: "backImage")!)
        view.contentMode = .scaleAspectFit
        view.addSubview(loginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordLabel)
        view.addSubview(orContinueLabel)
    }
    private func configureConstraints() {
        let stackView = UIStackView(arrangedSubviews: [dontHaveAccountLabel, signUpButton])
        stackView.axis = .horizontal
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        let stackButton = UIStackView(arrangedSubviews: [facebookButton, appleButton])
        stackButton.axis = .horizontal
        stackButton.distribution = .fillEqually
        stackButton.spacing = 4
        stackButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackButton)
        
        NSLayoutConstraint.activate([
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 2),
            loginTextField.topAnchor.constraint(equalToSystemSpacingBelow: loginLabel.bottomAnchor, multiplier: 4),
            loginTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginTextField.trailingAnchor, multiplier: 2),
            loginTextField.heightAnchor.constraint(equalToConstant: 40),
            passwordTextField.topAnchor.constraint(equalToSystemSpacingBelow: loginTextField.bottomAnchor, multiplier: 2),
            passwordTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: passwordTextField.trailingAnchor, multiplier: 2),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            loginButton.topAnchor.constraint(equalToSystemSpacingBelow: passwordTextField.bottomAnchor, multiplier: 8),
            loginButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginButton.trailingAnchor, multiplier: 2),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            forgotPasswordLabel.topAnchor.constraint(equalToSystemSpacingBelow: loginButton.bottomAnchor, multiplier: 2),
            forgotPasswordLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.bottomAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.bottomAnchor, multiplier: -4),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: stackButton.bottomAnchor, multiplier: 8),
            stackButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackButton.trailingAnchor, multiplier: 2),
            orContinueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackButton.topAnchor.constraint(equalToSystemSpacingBelow: orContinueLabel.bottomAnchor, multiplier: 4)
        ])
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage?) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

struct Provider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: Context) -> some UIViewController {
            LoginViewController()
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
    }
}
