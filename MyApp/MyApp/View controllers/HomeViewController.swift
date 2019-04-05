//
//  HomeViewController.swift
//  MyApp
//
//  Created by kevin flores on 4/5/19.
//  Copyright © 2019 kevin flores. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        setUpNextButton()
        // Do any additional setup after loading the view.
    }
    
    func setUpNextButton() {
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.setTitle("Next", for: .normal)
        
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        view.addSubview(nextButton)
        setNextButtonConstraints()
    }
    
    @objc func nextButtonTapped() {
        let nextScreen = SearchViewController()
        nextScreen.title = "Search"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    func setNextButtonConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        //set up 4 constraints
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
