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
    let showCalculateView = ShowCalculateView()
    
    
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
//            firstRowView.topAnchor.constraint(equalTo: secondRowView.bottomAnchor, constant: -10)
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
        thirdRowView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            thirdRowView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            thirdRowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            thirdRowView.bottomAnchor.constraint(equalTo: secondRowView.topAnchor, constant: -10),
            thirdRowView.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(fourthRowView)
        fourthRowView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            fourthRowView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fourthRowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            fourthRowView.bottomAnchor.constraint(equalTo: thirdRowView.topAnchor, constant: -10),
            fourthRowView.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(fifthRowView)
        fifthRowView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            fifthRowView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fifthRowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            fifthRowView.bottomAnchor.constraint(equalTo: fourthRowView.topAnchor, constant: -10),
            fifthRowView.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(showCalculateView)
        showCalculateView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            showCalculateView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            showCalculateView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            showCalculateView.bottomAnchor.constraint(equalTo: fifthRowView.topAnchor, constant: -10),
//            showCalculateView.topAnchor.constraint(equalTo: topAnchor)
            showCalculateView.heightAnchor.constraint(equalToConstant: 81)
        ])
    }
            

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
