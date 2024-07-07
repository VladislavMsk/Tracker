//
//  FirstScreen.swift
//  Tracker
//
//  Created by Vladislav Tudos on 04.07.2024.
//

import Foundation
import UIKit

class TrackerViewController: UIViewController, UISearchBarDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Устанавливаем цвет фона
        view.backgroundColor = .white
        
        //Устанавливаю вью в которой хранятся элементы шапки
        let topNav = UIView()
        
        view.addSubview(topNav)
        NSLayoutConstraint.activate([
            topNav.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
        ])
        
        // Верстка надписи на фоне
        let label = UILabel()
        label.text = "Что будем отслеживать?"
        label.textColor = .ypBlack
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 490)
        ])
        
        
        //Верска кнопки плюс в шапке
        let addButton = UIButton(type: .system)
        addButton.setTitle("+", for: .normal)
        addButton.tintColor = .ypBlack
        addButton.titleLabel?.font = UIFont.systemFont(ofSize: 42)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        topNav.addSubview(addButton)
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 1),
            addButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 6),
            addButton.widthAnchor.constraint(equalToConstant: 42),
            addButton.heightAnchor.constraint(equalToConstant: 42)
        ])
        
        //Блок с датой
        let dateLabel = UILabel()
        dateLabel.text = "14.22.22"
        dateLabel.textAlignment = .center
        dateLabel.textColor = .ypBlack
        dateLabel.font = UIFont.systemFont(ofSize: 17)
        dateLabel.backgroundColor = .ypGray
        dateLabel.layer.cornerRadius = 8
        dateLabel.layer.masksToBounds = true

        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        topNav.addSubview(dateLabel)
        
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            dateLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            //dateLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 282),
            dateLabel.widthAnchor.constraint(equalToConstant: 77),
            dateLabel.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        
        //Большой заголовок "Трекеры"
        let largeTitleLabel = UILabel()
        largeTitleLabel.text = "Трекеры"
        largeTitleLabel.textColor = .ypBlack
        largeTitleLabel.font = UIFont.systemFont(ofSize: 34, weight: .heavy)
        largeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        topNav.addSubview(largeTitleLabel)
        
        NSLayoutConstraint.activate([
            largeTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
            largeTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
        
        
        //Поле с поиском
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.placeholder = "Поиск"
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        topNav.addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 92),
            searchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            searchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
        
        //Верстка картинки по центру
        let magicLabel = UIImageView()
        let imageMagic = UIImage(named: "Magic")
        magicLabel.translatesAutoresizingMaskIntoConstraints = false
        magicLabel.image = imageMagic
        view.addSubview(magicLabel)
        
        NSLayoutConstraint.activate([
            magicLabel.heightAnchor.constraint(equalToConstant: 80),
            magicLabel.widthAnchor.constraint(equalToConstant: 80),
            magicLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 402),
            magicLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 147)
        ])
        
        
        
        
    }
}



