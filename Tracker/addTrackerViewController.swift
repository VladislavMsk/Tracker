//
//  addTrackerViewController.swift
//  Tracker
//
//  Created by Vladislav Tudos on 21.07.2024.
//

import Foundation
import UIKit

//Верстка экрана добавления трекера
class addTrackerViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.clear
        
        //Общая вью для корневого боди
        let mainView = UIView()
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 10
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20)

        ])
        
        //Создаем тайтл для блока
        let title = UILabel()
        title.text = "Создание трекера"
        title.textAlignment = .center
        title.textColor = .ypBlack
        title.font = UIFont.systemFont(ofSize: 16)
        title.translatesAutoresizingMaskIntoConstraints = false
        
        mainView.addSubview(title)
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 38),
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        //Кнопка "привычка"
        let habbitButton = UIButton(type: .system)
        //habbitButton.tintColor = .ypBlack
        habbitButton.backgroundColor = .ypBlack
        habbitButton.setTitle("Привычка", for: .normal)
        habbitButton.setTitleColor(.white, for: .normal)
        habbitButton.layer.cornerRadius = 16
        habbitButton.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(habbitButton)
        
        NSLayoutConstraint.activate([
            habbitButton.widthAnchor.constraint(equalToConstant: 335),
            habbitButton.heightAnchor.constraint(equalToConstant: 60),
            habbitButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 355),
            habbitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
        
        //Кнопка "Нерегулярное событие"
        let eventButton = UIButton(type: .system)
        eventButton.backgroundColor = .ypBlack
        eventButton.setTitle("Нерегулярное событие", for: .normal)
        eventButton.setTitleColor(.white, for: .normal)
        eventButton.layer.cornerRadius = 16
        eventButton.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(eventButton)
        
        NSLayoutConstraint.activate([
            eventButton.widthAnchor.constraint(equalToConstant: 335),
            eventButton.heightAnchor.constraint(equalToConstant: 60),
            eventButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 421),
            eventButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
        
        
    }
}
