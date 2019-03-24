//
//  LoginView.swift
//  ViewCode
//
//  Created by Usuário Convidado on 23/03/19.
//  Copyright © 2019 FIAP. All rights reserved.
//

import UIKit

protocol LoginViewDelegate: class {
    func buttonClicked()
}

class LoginView: UIView, CodeView {
    
    weak var delegate: LoginViewDelegate?
    
    let stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = Margin.vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.text = "Vamos começar"
        titleLabel.font = .title
        titleLabel.textColor = .fiap
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let bodyLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.text = "Isso aqui é pros fí-duma-éguas que acham mais produtivo usar Viewcode do que Storyboard. Mas o Xamarim não é melhor"
        titleLabel.font = .body
        titleLabel.textColor = .gray
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .left
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Silêncio", for: .normal)
        button.backgroundColor = .fiap
        button.tintColor = .white
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    func setupComponents() {
        addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(bodyLabel)
        stackView.addArrangedSubview(button)
    }
    
    func setupConstraints() {
        stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: Margin.vertical).isActive = true
        stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: Margin.horizontal).isActive = true
        stackView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
        
        
    }
    
    func setupExtraConfiguration() {
        backgroundColor = .white
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    @objc func buttonClicked() {
        delegate?.buttonClicked()
    }

    init(delegate: LoginViewDelegate?) {
        self.delegate = delegate
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init coder não implementado")
    }

}
