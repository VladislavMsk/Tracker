//
//  FirstScreen.swift
//  Tracker
//
//  Created by Vladislav Tudos on 04.07.2024.
//

import Foundation
import UIKit

class TrackerViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Устанавливаем цвет фона
        view.backgroundColor = .white
        
        // Верстка надписи на фоне
        let label = UILabel()
        label.text = "Что будем отслеживать?"
        label.textColor = .ypBlack
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Выровнять по центру по горизонтали
        ])

        
        //Верска кнопки плюс в шапке
        let plusButton = UIButton(type: .system)
        plusButton.setTitle("+", for: .normal)
        plusButton.tintColor = .ypBlack
        plusButton.titleLabel?.font = UIFont.systemFont(ofSize: 42)
        
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(plusButton)
        
        
        
    }
}

