//
//  LoginScreen.swift
//  Meu.Negócio
//
//  Created by Bruno Moura on 29/05/23.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var logoImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 234, height: 234)
        imageView.backgroundColor = .clear
        imageView.image = UIImage(named: "MeuNegocio_Black")
        
        return imageView
    }()
    
    lazy var emailTextField: UITextField = {
        let tf: UITextField = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "E-mail"
        tf.autocorrectionType = .yes
        tf.borderStyle = .roundedRect
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.blackCustom.cgColor
        tf.keyboardType = .emailAddress
        tf.isSecureTextEntry = false
        tf.textColor = .black
        
        if let font = UIFont(name: UIFont.openSansSemibold, size: 24) {
            let attributedPlaceholder = NSAttributedString(string: "E-mail", attributes: [NSAttributedString.Key.font: font])
            tf.attributedPlaceholder = attributedPlaceholder
            tf.font = UIFontMetrics.default.scaledFont(for: font)
        }
        
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf: UITextField = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Senha"
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.blackCustom.cgColor
        tf.keyboardType = .asciiCapable
        tf.isSecureTextEntry = true
        tf.textColor = .black
        
        if let font = UIFont(name: UIFont.openSansSemibold, size: 24) {
            let attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [NSAttributedString.Key.font: font])
            tf.attributedPlaceholder = attributedPlaceholder
            tf.font = UIFontMetrics.default.scaledFont(for: font)
        }
        
        return tf
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueci minha senha", for: .normal)
        button.setTitleColor(.darkGrayCustom, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(tappedForgotPasswordButton), for: .touchUpInside)
        
        let attributedTitle = NSAttributedString(
            string: "Esqueci minha senha",
            attributes: [
                NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue,
                NSAttributedString.Key.foregroundColor: UIColor.darkGrayCustom
            ]
        )
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        if let font = UIFont(name: UIFont.openSansSemibold, size: 24) {
            button.titleLabel?.font = UIFontMetrics.default.scaledFont(for: font)
        }
        
        return button
    }()
    
    @objc func tappedForgotPasswordButton(_ sender: UIButton) {
        
    }
    
    lazy var loginButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .purpleCustom
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        
        if let font = UIFont(name: UIFont.openSansSemibold, size: 28) {
            button.titleLabel?.font = UIFontMetrics.default.scaledFont(for: font)
        }
        
        return button
    }()
    
    @objc func tappedLoginButton(_ sender: UIButton) {
        
    }
    
    lazy var registerButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Criar conta", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .purpleCustom
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        
        if let font = UIFont(name: UIFont.openSansSemibold, size: 28) {
            button.titleLabel?.font = UIFontMetrics.default.scaledFont(for: font)
        }
        
        return button
    }()
    
    @objc func tappedRegisterButton(_ sender: UIButton) {
        
    }
    
    lazy var barView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGrayCustom
        view.frame = CGRect(x: 0, y: 0, width: 300, height: 5)
        view.layer.cornerRadius = 10.0
        view.clipsToBounds = true
        return view
    }()
    
    lazy var loginWithLabel: UILabel = {
        let label = UILabel ()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .blackCustom
        label.font = UIFont(name: "OpenSans-Semibold", size: 20)
        label.text = "Entrar com:"
        return label
    }()
    
    lazy var loginWithFacebookView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGrayCustom
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.layer.cornerRadius = 10.0
        view.clipsToBounds = true
        return view
    }()
    
    lazy var facebookImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 37, height: 37)
        imageView.backgroundColor = .clear
        imageView.image = UIImage(named: "facebook")
        return imageView
    }()
    
    lazy var loginWithFacebookButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 10.0
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(tappedLoginWithFacebookButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc func tappedLoginWithFacebookButton(_ sender: UIButton) {
    }
    
    
    lazy var loginWithGoogleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGrayCustom
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.layer.cornerRadius = 10.0
        view.clipsToBounds = true
        return view
    }()
    
    lazy var googleImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 37, height: 37)
        imageView.backgroundColor = .clear
        imageView.image = UIImage(named: "google")
        return imageView
    }()
    
    lazy var loginWithGoogleButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 10.0
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(tappedLoginWithGoogleButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc func tappedLoginWithGoogleButton(_ sender: UIButton) {
    }
    
    lazy var loginWithAppleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGrayCustom
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.layer.cornerRadius = 10.0
        view.clipsToBounds = true
        return view
    }()
    
    lazy var appleImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 37, height: 37)
        imageView.backgroundColor = .clear
        imageView.image = UIImage(named: "apple")
        return imageView
    }()
    
    lazy var loginWithAppleButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 10.0
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(tappedLoginWithAppleButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc func tappedLoginWithAppleButton(_ sender: UIButton) {
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(logoImageView)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(forgotPasswordButton)
        addSubview(loginButton)
        addSubview(registerButton)
        addSubview(barView)
        addSubview(loginWithLabel)
        addSubview(loginWithFacebookView)
        loginWithFacebookView.addSubview(facebookImageView)
        addSubview(loginWithFacebookButton)
        addSubview(loginWithGoogleView)
        loginWithGoogleView.addSubview(googleImageView)
        addSubview(loginWithGoogleButton)
        addSubview(loginWithAppleView)
        loginWithAppleView.addSubview(appleImageView)
        addSubview(loginWithAppleButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 59),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 234),
            logoImageView.heightAnchor.constraint(equalToConstant: 234),
            
            emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
            emailTextField.heightAnchor.constraint(equalToConstant: 45),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25),
            passwordTextField.heightAnchor.constraint(equalToConstant: 45),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 22),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 33),
            forgotPasswordButton.widthAnchor.constraint(equalToConstant: 245),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            loginButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 26),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            loginButton.heightAnchor.constraint(equalToConstant: 45),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 21),
            registerButton.widthAnchor.constraint(equalToConstant: 200),
            registerButton.heightAnchor.constraint(equalToConstant: 45),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            barView.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 30),
            barView.widthAnchor.constraint(equalToConstant: 300),
            barView.heightAnchor.constraint(equalToConstant: 5),
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            loginWithLabel.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 3),
            loginWithLabel.widthAnchor.constraint(equalToConstant: 113),
            loginWithLabel.heightAnchor.constraint(equalToConstant: 27),
            loginWithLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            loginWithGoogleView.topAnchor.constraint(equalTo: loginWithLabel.bottomAnchor, constant: 16),
            loginWithGoogleView.widthAnchor.constraint(equalToConstant: 50),
            loginWithGoogleView.heightAnchor.constraint(equalToConstant: 50),
            loginWithGoogleView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            googleImageView.centerXAnchor.constraint(equalTo: loginWithGoogleView.centerXAnchor),
            googleImageView.centerYAnchor.constraint(equalTo: loginWithGoogleView.centerYAnchor),
            googleImageView.widthAnchor.constraint(equalToConstant: 37),
            googleImageView.heightAnchor.constraint(equalToConstant: 37),
            
            loginWithGoogleButton.centerXAnchor.constraint(equalTo: loginWithGoogleView.centerXAnchor),
            loginWithGoogleButton.centerYAnchor.constraint(equalTo: loginWithGoogleView.centerYAnchor),
            loginWithGoogleButton.widthAnchor.constraint(equalToConstant: 37),
            loginWithGoogleButton.heightAnchor.constraint(equalToConstant: 37),
            
            loginWithFacebookView.topAnchor.constraint(equalTo: loginWithLabel.bottomAnchor, constant: 16),
            loginWithFacebookView.widthAnchor.constraint(equalToConstant: 50),
            loginWithFacebookView.heightAnchor.constraint(equalToConstant: 50),
            loginWithFacebookView.trailingAnchor.constraint(equalTo: loginWithGoogleView.leadingAnchor, constant: -49),
            
            facebookImageView.centerXAnchor.constraint(equalTo: loginWithFacebookView.centerXAnchor),
            facebookImageView.centerYAnchor.constraint(equalTo: loginWithFacebookView.centerYAnchor),
            facebookImageView.widthAnchor.constraint(equalToConstant: 37),
            facebookImageView.heightAnchor.constraint(equalToConstant: 37),
            
            loginWithFacebookButton.centerXAnchor.constraint(equalTo: loginWithFacebookView.centerXAnchor),
            loginWithFacebookButton.centerYAnchor.constraint(equalTo: loginWithFacebookView.centerYAnchor),
            loginWithFacebookButton.widthAnchor.constraint(equalToConstant: 37),
            loginWithFacebookButton.heightAnchor.constraint(equalToConstant: 37),
            
            loginWithAppleView.topAnchor.constraint(equalTo: loginWithLabel.bottomAnchor, constant: 16),
            loginWithAppleView.widthAnchor.constraint(equalToConstant: 50),
            loginWithAppleView.heightAnchor.constraint(equalToConstant: 50),
            loginWithAppleView.leadingAnchor.constraint(equalTo: loginWithGoogleView.trailingAnchor, constant: 49),
            
            appleImageView.centerXAnchor.constraint(equalTo: loginWithAppleView.centerXAnchor),
            appleImageView.centerYAnchor.constraint(equalTo: loginWithAppleView.centerYAnchor),
            appleImageView.widthAnchor.constraint(equalToConstant: 37),
            appleImageView.heightAnchor.constraint(equalToConstant: 37),
            
            loginWithAppleButton.centerXAnchor.constraint(equalTo: loginWithAppleView.centerXAnchor),
            loginWithAppleButton.centerYAnchor.constraint(equalTo: loginWithAppleView.centerYAnchor),
            loginWithAppleButton.widthAnchor.constraint(equalToConstant: 37),
            loginWithAppleButton.heightAnchor.constraint(equalToConstant: 37),
        ])
    }
}
