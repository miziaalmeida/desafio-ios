//
//  StatementViewController.swift
//  phiBank
//
//  Created by Mizia Lima on 01/06/23.
//

import UIKit

class StatementViewController: UIViewController, ViewConfiguration {
    
    lazy var phiBankButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.backgroundColor = PhiDSTokensColors.gray
        button.addTarget(self, action: #selector(goToStatements), for: .touchUpInside)
        button.setTitle("Voltar", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewConfiguration()
    }
    
    func configureViews() {
        self.view.backgroundColor = PhiDSTokensColors.white
    }
    
    func buildViewHierarchy() {
        view.addSubview(phiBankButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            phiBankButton.heightAnchor.constraint(equalToConstant: 60),
            phiBankButton.widthAnchor.constraint(equalToConstant: 140),
            phiBankButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            phiBankButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    @objc func goToStatements() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
