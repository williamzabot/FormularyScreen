//
//  CadastroView.swift
//  Cadastro
//
//  Created by William Zabot on 15/10/21.
//

import UIKit

class CadastroView : UIView {
    
    var titleFormulary : UILabel = {
        let uiLabel = UILabel()
        uiLabel.text = "Preencha seus dados"
        uiLabel.textColor = .black
        uiLabel.textAlignment = .center
        return uiLabel
    }()
    
    var buttonContinue : UIButton = {
       let button = UIButton()
        button.setTitle("Continuar", for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 8
        return button
    }()
    
    lazy var textFieldName : UITextField = {
        return configTextField(text: "Digite seu nome")
    }()
    
    lazy var textFieldAddress : UITextField = {
        return configTextField(text: "Digite seu endereço")
    }()
    
    lazy var textFieldPhone : UITextField = {
        return configTextField(text: "Digite seu telefone")
    }()
    
    lazy var textFieldAge : UITextField = {
        return configTextField(text: "Digite sua idade")
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
        initConstraints()
    }
    
    private func configTextField(text : String) -> UITextField {
        let textField = UITextField()
        textField.placeholder = text
        textField.textColor = .black
        textField.textAlignment = .center
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 8
        textField.borderStyle = .roundedRect
        return textField
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initView(){
        self.addSubview(titleFormulary)
        self.addSubview(textFieldName)
        self.addSubview(textFieldAddress)
        self.addSubview(textFieldPhone)
        self.addSubview(textFieldAge)
        self.addSubview(buttonContinue)
    }
    
   private func initConstraints() {
       titleFormulary.translatesAutoresizingMaskIntoConstraints = false
       titleFormulary.topAnchor.constraint(equalTo: self.topAnchor, constant: 70).isActive = true
       titleFormulary.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
       titleFormulary.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
       
        textFieldName.translatesAutoresizingMaskIntoConstraints = false
       textFieldName.topAnchor.constraint(equalTo: titleFormulary.bottomAnchor, constant: 45).isActive = true
       textFieldName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
       textFieldName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
       
       textFieldAddress.translatesAutoresizingMaskIntoConstraints = false
       textFieldAddress.topAnchor.constraint(equalTo: textFieldName.bottomAnchor, constant: 20).isActive = true
       textFieldAddress.leadingAnchor.constraint(equalTo: textFieldName.leadingAnchor, constant: 0).isActive = true
       textFieldAddress.trailingAnchor.constraint(equalTo: textFieldName.trailingAnchor, constant: 0).isActive = true
        
       textFieldPhone.translatesAutoresizingMaskIntoConstraints = false
       textFieldPhone.topAnchor.constraint(equalTo: textFieldAddress.bottomAnchor, constant: 20).isActive = true
       textFieldPhone.leadingAnchor.constraint(equalTo: textFieldAddress.leadingAnchor, constant: 0).isActive = true
       textFieldPhone.trailingAnchor.constraint(equalTo: textFieldAddress.trailingAnchor, constant: 0).isActive = true
       
       textFieldAge.translatesAutoresizingMaskIntoConstraints = false
       textFieldAge.topAnchor.constraint(equalTo: textFieldPhone.bottomAnchor, constant: 20).isActive = true
       textFieldAge.leadingAnchor.constraint(equalTo: textFieldPhone.leadingAnchor, constant: 0).isActive = true
       textFieldAge.trailingAnchor.constraint(equalTo: textFieldPhone.trailingAnchor, constant: 0).isActive = true
        
       buttonContinue.translatesAutoresizingMaskIntoConstraints = false
       buttonContinue.topAnchor.constraint(equalTo: textFieldAge.bottomAnchor, constant: 30).isActive = true
       buttonContinue.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70).isActive = true
       buttonContinue.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70).isActive = true
    }
    
    
}
