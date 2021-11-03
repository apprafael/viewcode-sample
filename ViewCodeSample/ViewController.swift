//
//  ViewController.swift
//  ViewCodeSample
//
//  Created by Rafael Almeida on 03/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.alignment = .top
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var nameTitle: UILabel = {
        let label = UILabel()
        label.text = "Nome"
        label.numberOfLines = 0
        return label
    }()
    
    lazy var nameField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        return textField
    }()
    
    lazy var celTitle: UILabel = {
        let label = UILabel()
        label.text = "Cel"
        label.numberOfLines = 0
        return label
    }()
    
    lazy var celField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(stackView)
        stackView.addArrangedSubview(nameTitle)
        stackView.addArrangedSubview(nameField)
        stackView.addArrangedSubview(celTitle)
        stackView.addArrangedSubview(celField)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            nameTitle.heightAnchor.constraint(equalToConstant: 20),
            nameField.heightAnchor.constraint(equalToConstant: 20),
            nameField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            nameField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            
            celTitle.heightAnchor.constraint(equalToConstant: 20),
            celField.heightAnchor.constraint(equalToConstant: 20),
            celField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            celField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
        ])
    }
}

