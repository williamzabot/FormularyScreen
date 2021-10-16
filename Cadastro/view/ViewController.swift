//
//  ViewController.swift
//  Cadastro
//
//  Created by William Zabot on 15/10/21.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        let frameViewPai = self.view.frame
        let cadastroView = CadastroView(frame: frameViewPai)
        self.view.addSubview(cadastroView)
    }


}

