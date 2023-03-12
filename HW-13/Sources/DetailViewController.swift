//
//  DetailViewController.swift
//  HW-13
//
//  Created by Serikzhan on 12.03.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    var settingRow: SettingsRow?
    
    // MARK: - Outlets
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 125
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 5
        imageView.layer.borderColor = UIColor.darkGray.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        setupHierarchy()
        setupLayout()
        fillSettings()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(label)

    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 250),
            imageView.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            label.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            label.heightAnchor.constraint(equalToConstant: 50),
            label.leadingAnchor.constraint(equalTo: imageView.leadingAnchor)
        ])
    }
    
    private func fillSettings() {
        imageView.image = settingRow?.optionsIcon
        label.text = settingRow?.optionsName
    }
}
