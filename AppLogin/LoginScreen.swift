//
//  LoginScreen.swift
//  AppLogin
//
//  Created by Maycon Silva on 02/11/23.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var subImageview: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BGLogin")
        return image
    }()
    
    lazy var logoAppImageview: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BFLogin")
        return image
    }()

    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "O CUBO"
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        label.text = "O marktplace de NFTs do O CUBO"
        return label
    }()
    
    lazy var loginTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.20, alpha: 1.00) /*#343434*/
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.attributedPlaceholder = NSAttributedString(string: "Login", attributes:[NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4)])
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.20, alpha: 1.00) /*#343434*/
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.isSecureTextEntry = true
        tf.attributedPlaceholder = NSAttributedString(string: "Senha", attributes:[NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4)])
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var recoverPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Recuperar Senha?", for: .normal)
        button.setTitleColor(UIColor(red: 0.906, green: 0.188, blue: 0.839, alpha: 1.0)/*e730d6*/, for: .normal)
        button.addTarget(self, action: #selector(tappedRecoverPasswordButton), for: .touchUpInside)
        return button
    }()
    
    lazy var subLoginImageview: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Image")
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        image.contentMode = .scaleToFill
        return image
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var lineView: UIView = {
        var line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
        return line
    }()
    
    @objc func tappedLoginButton(_ sender: UIButton) {
        print(#function)
    }
    
    @objc func tappedRecoverPasswordButton(_ sender: UIButton) {
        print(#function)
    }
    
    lazy var signInMetamaskView: UIView = {
        var border = UIView()
        border.translatesAutoresizingMaskIntoConstraints = false
        border.clipsToBounds = true
        border.layer.cornerRadius = 8
        border.layer.borderColor = UIColor(red: 0.812, green: 0.0, blue: 0.753, alpha: 1.0).cgColor /*cf00c0*/
        border.layer.borderWidth = 2
        return border
    }()
    
    lazy var signInMetamaskImageview: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Images")
        return image
    }()
    
    lazy var signInMetamaskLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Entrar com Metamask"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(subImageview)
        addSubview(logoAppImageview)
        addSubview(loginLabel)
        addSubview(descriptionLabel)
        addSubview(loginTextField)
        addSubview(passwordTextField)
        addSubview(recoverPasswordButton)
        addSubview(subLoginImageview)
        addSubview(loginButton)
        addSubview(lineView)
        addSubview(signInMetamaskView)
        signInMetamaskView.addSubview(signInMetamaskImageview)
        signInMetamaskView.addSubview(signInMetamaskLabel)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            subImageview.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageview.topAnchor.constraint(equalTo: topAnchor),
            subImageview.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageview.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoAppImageview.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 55	),
            
            logoAppImageview.heightAnchor.constraint(equalToConstant: 108),
            logoAppImageview.widthAnchor.constraint(equalToConstant: 108),
            logoAppImageview.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            loginLabel.topAnchor.constraint(equalTo: logoAppImageview.bottomAnchor, constant: 16),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            loginTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 32),
            loginTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            loginTextField.heightAnchor.constraint(equalToConstant: 39),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 11),
            passwordTextField.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: loginTextField.heightAnchor),
            
            recoverPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 9),
            recoverPasswordButton.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            recoverPasswordButton.heightAnchor.constraint(equalToConstant: 16),
            
            subLoginImageview.topAnchor.constraint(equalTo: recoverPasswordButton.bottomAnchor, constant: 32),
            subLoginImageview.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            subLoginImageview.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            subLoginImageview.heightAnchor.constraint(equalTo: loginTextField.heightAnchor),
            
            loginButton.topAnchor.constraint(equalTo: subLoginImageview.topAnchor),
            loginButton.leadingAnchor.constraint(equalTo: subLoginImageview.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: subLoginImageview.trailingAnchor),
            loginButton.heightAnchor.constraint(equalTo: subLoginImageview.heightAnchor),
            
            lineView.topAnchor.constraint(equalTo: subLoginImageview.bottomAnchor, constant: 48),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 64),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -64),
            lineView.heightAnchor.constraint(equalToConstant: 0.5),
            
            signInMetamaskView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 48),
            signInMetamaskView.leadingAnchor.constraint(equalTo: subLoginImageview.leadingAnchor),
            signInMetamaskView.trailingAnchor.constraint(equalTo: subLoginImageview.trailingAnchor),
            signInMetamaskView.heightAnchor.constraint(equalTo: subLoginImageview.heightAnchor),
            
            signInMetamaskImageview.leadingAnchor.constraint(equalTo: signInMetamaskView.leadingAnchor, constant: 53),
            signInMetamaskImageview.centerYAnchor.constraint(equalTo: signInMetamaskView.centerYAnchor),
            signInMetamaskImageview.heightAnchor.constraint(equalToConstant: 20),
            signInMetamaskImageview.widthAnchor.constraint(equalToConstant: 20),
            
            signInMetamaskLabel.leadingAnchor.constraint(equalTo: signInMetamaskImageview.trailingAnchor, constant: 17),
            signInMetamaskLabel.centerYAnchor.constraint(equalTo: signInMetamaskView.centerYAnchor)
            
        ])
    }
    
}
    
