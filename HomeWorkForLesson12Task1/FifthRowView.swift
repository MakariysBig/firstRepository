//
//  FifthRowView.swift
//  HomeWorkForLesson12Task1
//
//  Created by User on 6.04.22.
//

import UIKit

class FifthRowView: UIView {
    
    let clearButton = UIButton()
    let changeSignButton = UIButton()
    let percentButton = UIButton()
    let divideButton = UIButton()

    init() {
        super.init(frame: .zero)
        backgroundColor = .red
        setUpFifthRowButtons()
    }
    
    private func setUpFifthRowButtons() {
        addSubview(clearButton)
        clearButton.backgroundColor = .darkGray
        clearButton.layer.cornerRadius = 40
        clearButton.setTitle("c", for: .normal)
        
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            clearButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            clearButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            clearButton.widthAnchor.constraint(equalToConstant: 81),
            clearButton.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(changeSignButton)
        changeSignButton.backgroundColor = .darkGray
        changeSignButton.layer.cornerRadius = 40
        changeSignButton.setTitle("+/-", for: .normal)
        
        changeSignButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            changeSignButton.leadingAnchor.constraint(equalTo: clearButton.trailingAnchor, constant: 10),
            changeSignButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            changeSignButton.widthAnchor.constraint(equalTo: clearButton.widthAnchor),
            changeSignButton.heightAnchor.constraint(equalTo: clearButton.heightAnchor)
        ])
        
        addSubview(percentButton)
        percentButton.backgroundColor = .darkGray
        percentButton.layer.cornerRadius = 40
        percentButton.setTitle("%", for: .normal)
        
        percentButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            percentButton.leadingAnchor.constraint(equalTo: changeSignButton.trailingAnchor, constant: 10),
            percentButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            percentButton.widthAnchor.constraint(equalTo: clearButton.widthAnchor),
            percentButton.heightAnchor.constraint(equalTo: clearButton.heightAnchor)
        ])
        
        addSubview(divideButton)
        divideButton.backgroundColor = .orange
        divideButton.layer.cornerRadius = 40
        divideButton.setTitle("x", for: .normal)
        
        divideButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            divideButton.leadingAnchor.constraint(equalTo: percentButton.trailingAnchor, constant: 10),
            divideButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            divideButton.widthAnchor.constraint(equalTo: clearButton.widthAnchor),
            divideButton.heightAnchor.constraint(equalTo: clearButton.heightAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
