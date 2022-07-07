//
//  ViewController.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupView()
//        setConstraints()
    }
    
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.backgroundColor = .cyan
        
        return scroll
    }()
    
    let imageLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "vk")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10
        textField.textColor = .black
        textField.clearButtonMode = .always
        textField.returnKeyType = .done
        
        textField.translatesAutoresizingMaskIntoConstraints = false
    
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10
        textField.textColor = .black
        textField.clearButtonMode = .always
        textField.returnKeyType = .done
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        
        return textField
    }()
    
    let buttonLogin: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.layer.cornerRadius = 10
        button.setTitle("Войти", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(tapButtonLogin), for: .touchUpInside)
        
        return button
    }()
    
    @objc private func tapButtonLogin() {
        let newTabBarVC = TabBarVC()
        
        guard let login = loginField.text,
              let password = passwordField.text,
              login == "",
              password == "" else {
            show(message: "Error password or login")
            return}
        
//        performSegue(withIdentifier: "Login", sender: nil)
        present(newTabBarVC, animated: true)
    }
    
    private func setupView() {
        scrollView.addSubview(imageLogo)
        scrollView.addSubview(nameTextField)
        scrollView.addSubview(passwordTextField)
        scrollView.addSubview(buttonLogin)
        
        view.addSubview(scrollView)
        view.backgroundColor = .green
    }
    
    @IBAction func buttonEnter(_ sender: Any) {

        guard let login = loginField.text,
              let password = passwordField.text,
              login == "",
              password == "" else {
            show(message: "Error password or login")
            return}
        
        performSegue(withIdentifier: "Login", sender: nil)

    }
}
