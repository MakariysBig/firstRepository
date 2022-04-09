//
//  FourthRowView.swift
//  HomeWorkForLesson12Task1
//
//  Created by User on 6.04.22.
//

import UIKit

class FourthRowView: UIView {
    
    let numberSevenButton = UIButton()
    let numberEightButton = UIButton()
    let numberNineButton = UIButton()
    let multiplyButton = UIButton()

    init() {
        super.init(frame: .zero)
        backgroundColor = .red
        setUpFourthRowButtons()
    }
    
    private func setUpFourthRowButtons() {
        addSubview(numberSevenButton)
        numberSevenButton.backgroundColor = .darkGray
        numberSevenButton.layer.cornerRadius = 40
        numberSevenButton.setTitle("7", for: .normal)
        
        numberSevenButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberSevenButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            numberSevenButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberSevenButton.widthAnchor.constraint(equalToConstant: 81),
            numberSevenButton.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(numberEightButton)
        numberEightButton.backgroundColor = .darkGray
        numberEightButton.layer.cornerRadius = 40
        numberEightButton.setTitle("8", for: .normal)
        
        numberEightButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberEightButton.leadingAnchor.constraint(equalTo: numberSevenButton.trailingAnchor, constant: 10),
            numberEightButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberEightButton.widthAnchor.constraint(equalTo: numberSevenButton.widthAnchor),
            numberEightButton.heightAnchor.constraint(equalTo: numberSevenButton.heightAnchor)
        ])
        
        addSubview(numberNineButton)
        numberNineButton.backgroundColor = .darkGray
        numberNineButton.layer.cornerRadius = 40
        numberNineButton.setTitle("9", for: .normal)
        
        numberNineButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberNineButton.leadingAnchor.constraint(equalTo: numberEightButton.trailingAnchor, constant: 10),
            numberNineButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberNineButton.widthAnchor.constraint(equalTo: numberSevenButton.widthAnchor),
            numberNineButton.heightAnchor.constraint(equalTo: numberSevenButton.heightAnchor)
        ])
        
        addSubview(multiplyButton)
        multiplyButton.backgroundColor = .orange
        multiplyButton.layer.cornerRadius = 40
        multiplyButton.setTitle("x", for: .normal)
        
        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            multiplyButton.leadingAnchor.constraint(equalTo: numberNineButton.trailingAnchor, constant: 10),
            multiplyButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            multiplyButton.widthAnchor.constraint(equalTo: numberSevenButton.widthAnchor),
            multiplyButton.heightAnchor.constraint(equalTo: numberSevenButton.heightAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
