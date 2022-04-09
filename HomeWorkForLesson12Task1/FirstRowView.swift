import UIKit

class FirstRowView: UIView {
    
    let zeroButton = UIButton()
    let commaButton = UIButton()
    let equalsButton = UIButton()
    let plusButton = UIButton()

    init() {
        super.init(frame: .zero)
        backgroundColor = .red
        setUpFirstRowButtons()
        
    }
    
    private func setUpFirstRowButtons() {
        addSubview(zeroButton)
        zeroButton.backgroundColor = .darkGray
        zeroButton.layer.cornerRadius = 40
        zeroButton.setTitle("0", for: .normal)
        
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            zeroButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            zeroButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            zeroButton.widthAnchor.constraint(equalToConstant: 172),
            zeroButton.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(commaButton)
        commaButton.backgroundColor = .darkGray
        commaButton.layer.cornerRadius = 40
        commaButton.setTitle(",", for: .normal)
        
        commaButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            commaButton.leadingAnchor.constraint(equalTo: zeroButton.trailingAnchor, constant: 10),
            commaButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            commaButton.widthAnchor.constraint(equalToConstant: 81),
            commaButton.heightAnchor.constraint(equalToConstant: 81)
        ])
        
        addSubview(equalsButton)
        equalsButton.backgroundColor = .orange
        equalsButton.layer.cornerRadius = 40
        equalsButton.setTitle("=", for: .normal)
        
        equalsButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            equalsButton.leadingAnchor.constraint(equalTo: commaButton.trailingAnchor, constant: 10),
            equalsButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            equalsButton.widthAnchor.constraint(equalToConstant: 81),
            equalsButton.heightAnchor.constraint(equalToConstant: 81)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
