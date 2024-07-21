//
//  FirstScreen.swift
//  Tracker
//
//  Created by Vladislav Tudos on 04.07.2024.
//

import Foundation
import UIKit

class TrackerViewController: UIViewController, UISearchBarDelegate{
    
    var categories: [TrackerCategory] = []
    var completedTrackers: [TrackerRecord] = []
    
    func addTracker(category: String, newTask:Tracker){
        //        var newElement:TrackerCategory
        //        newElement.titleCategory = category
        //        newElement.arrayTreckerSet = newTask
        //        categories.append(newElement)
        //
    }
    
    func setupNavigationBar() {
    
        // Добавление кнопки "плюс" в навигационной панели
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
        addButton.tintColor = .ypBlack
        navigationItem.leftBarButtonItem = addButton
        
        //Блок с датой
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .compact
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    @objc func addButtonTapped() {
        // Действие для кнопки "плюс"
        //let alert = UIAlertController(title: "Кнопка 'плюс' нажата", message: nil, preferredStyle: .alert)
        //alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        //present(alert, animated: true, completion: nil)
        let addTrackerVC =  addTrackerViewController()
        addTrackerVC.modalPresentationStyle = .fullScreen
        present(addTrackerVC, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Устанавливаем цвет фона
        view.backgroundColor = .white
    
        
        //Устанавливаю вью в которой хранятся элементы шапки
        let topNav = UIView()
        setupNavigationBar()
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

         //Большой заголовок "Трекеры"
         let largeTitleLabel = UILabel()
         largeTitleLabel.text = "Трекеры"
         largeTitleLabel.textColor = .ypBlack
         largeTitleLabel.font = UIFont.systemFont(ofSize: 34, weight: .heavy)
         largeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(largeTitleLabel)
         
         NSLayoutConstraint.activate([
         largeTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 1),
         largeTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
         ])
        
        
        //Поле с поиском
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.placeholder = "Поиск"
        searchBar.searchBarStyle = .minimal
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        topNav.addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 48),
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



