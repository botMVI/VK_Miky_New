//
//  ConstraintsExtension.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 28.06.2022.
//

import Foundation
import UIKit

extension ViewController {
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            imageLogo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
            imageLogo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2),
            imageLogo.widthAnchor.constraint(equalTo: imageLogo.heightAnchor, multiplier: 1/1),
            imageLogo.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: imageLogo.bottomAnchor, constant: 50),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            nameTextField.heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }
}
