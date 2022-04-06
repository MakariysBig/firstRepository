import UIKit

class SecondRowView: UIView {
    
    let numberOneButton = UIButton()
    let numberTwoButton = UIButton()
    let numberThreeButton = UIButton()
    let plusButton = UIButton()

    init() {
        super.init(frame: .zero)
        backgroundColor = .red
        setUpSecondRowButtons()
    }
    
    private func setUpSecondRowButtons() {
        addSubview(numberOneButton)
        numberOneButton.backgroundColor = .darkGray
        numberOneButton.layer.cornerRadius = 40
        numberOneButton.setTitle("1", for: .normal)
        
        numberOneButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberOneButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            numberOneButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberOneButton.widthAnchor.constraint(equalToConstant: 81),
            numberOneButton.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(numberTwoButton)
        numberTwoButton.backgroundColor = .darkGray
        numberTwoButton.layer.cornerRadius = 40
        numberTwoButton.setTitle("2", for: .normal)
        
        numberTwoButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberTwoButton.leadingAnchor.constraint(equalTo: numberOneButton.trailingAnchor, constant: 10),
            numberTwoButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberTwoButton.widthAnchor.constraint(equalTo: numberOneButton.widthAnchor),
            numberTwoButton.heightAnchor.constraint(equalTo: numberOneButton.heightAnchor)
        ])
        
        addSubview(numberThreeButton)
        numberThreeButton.backgroundColor = .darkGray
        numberThreeButton.layer.cornerRadius = 40
        numberThreeButton.setTitle("3", for: .normal)
        
        numberThreeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberThreeButton.leadingAnchor.constraint(equalTo: numberTwoButton.trailingAnchor, constant: 10),
            numberThreeButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberThreeButton.widthAnchor.constraint(equalTo: numberOneButton.widthAnchor),
            numberThreeButton.heightAnchor.constraint(equalTo: numberOneButton.heightAnchor)
        ])
        
        addSubview(plusButton)
        plusButton.backgroundColor = .orange
        plusButton.layer.cornerRadius = 40
        plusButton.setTitle("+", for: .normal)
        
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            plusButton.leadingAnchor.constraint(equalTo: numberThreeButton.trailingAnchor, constant: 10),
            plusButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            plusButton.widthAnchor.constraint(equalTo: numberOneButton.widthAnchor),
            plusButton.heightAnchor.constraint(equalTo: numberOneButton.heightAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
