//
//  ViewController.swift
//  HW-13
//
//  Created by Serikzhan on 10.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        setupHierarchy()
        setupLayout()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            
        ])
    }
    
    // MARK: - Actions
    
    @objc private func addNameButtonPressed() {
        print("addName button pressed")
        
    }
    
}

