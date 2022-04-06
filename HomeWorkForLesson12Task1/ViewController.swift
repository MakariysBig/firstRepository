//
//  ViewController.swift
//  HomeWorkForLesson12Task1
//
//  Created by User on 5.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUpMainView()
    }
    
    private func setUpMainView() {
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
    }


}

