//
//  MainView.swift
//  HomeWorkForLesson12Task1
//
//  Created by User on 5.04.22.
//

import UIKit

class MainView: UIView {

    let firstRowView = FirstRowView()
    let secondRowView = SecondRowView()
    let thirdRowView = ThirdRowView()
    let fourthRowView = FourthRowView()
    let fifthRowView = FifthRowView()
    
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .black
        setUpFirstRowView()
    }
    
    private func setUpFirstRowView() {
        addSubview(firstRowView)
        firstRowView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            firstRowView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            firstRowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            firstRowView.bottomAnchor.constraint(equalTo: bottomAnchor),
            firstRowView.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(secondRowView)
        secondRowView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            secondRowView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            secondRowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            secondRowView.bottomAnchor.constraint(equalTo: firstRowView.topAnchor, constant: -10),
            secondRowView.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(thirdRowView)
        secondRowView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            secondRowView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            secondRowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            secondRowView.bottomAnchor.constraint(equalTo: firstRowView.topAnchor, constant: -10),
            secondRowView.heightAnchor.constraint(equalToConstant: 81)
        ])
    }
            

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
