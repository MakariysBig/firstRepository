import UIKit

class ThirdRowView: UIView {
    
    let numberFourButton = UIButton()
    let numberFiveButton = UIButton()
    let numberSixButton = UIButton()
    let minusButton = UIButton()

    init() {
        super.init(frame: .zero)
        backgroundColor = .red
        setUpThirdRowButtons()
    }
    
    private func setUpThirdRowButtons() {
        addSubview(numberFourButton)
        numberFourButton.backgroundColor = .darkGray
        numberFourButton.layer.cornerRadius = 40
        numberFourButton.setTitle("4", for: .normal)
        
        numberFourButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberFourButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            numberFourButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberFourButton.widthAnchor.constraint(equalToConstant: 81),
            numberFourButton.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(numberFiveButton)
        numberFiveButton.backgroundColor = .darkGray
        numberFiveButton.layer.cornerRadius = 40
        numberFiveButton.setTitle("5", for: .normal)
        
        numberFiveButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberFiveButton.leadingAnchor.constraint(equalTo: numberFourButton.trailingAnchor, constant: 10),
            numberFiveButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberFiveButton.widthAnchor.constraint(equalTo: numberFourButton.widthAnchor),
            numberFiveButton.heightAnchor.constraint(equalTo: numberFourButton.heightAnchor)
        ])
        
        addSubview(numberSixButton)
        numberSixButton.backgroundColor = .darkGray
        numberSixButton.layer.cornerRadius = 40
        numberSixButton.setTitle("6", for: .normal)
        
        numberSixButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberSixButton.leadingAnchor.constraint(equalTo: numberFiveButton.trailingAnchor, constant: 10),
            numberSixButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            numberSixButton.widthAnchor.constraint(equalTo: numberFourButton.widthAnchor),
            numberSixButton.heightAnchor.constraint(equalTo: numberFourButton.heightAnchor)
        ])
        
        addSubview(minusButton)
        minusButton.backgroundColor = .orange
        minusButton.layer.cornerRadius = 40
        minusButton.setTitle("-", for: .normal)
        
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            minusButton.leadingAnchor.constraint(equalTo: numberSixButton.trailingAnchor, constant: 10),
            minusButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            minusButton.widthAnchor.constraint(equalTo: numberFourButton.widthAnchor),
            minusButton.heightAnchor.constraint(equalTo: numberFourButton.heightAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
