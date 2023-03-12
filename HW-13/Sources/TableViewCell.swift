//
//  TableViewCell.swift
//  HW-13
//
//  Created by Serikzhan on 10.03.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var settingRow: SettingsRow? {
        didSet {
            settingsIcon.image = settingRow?.optionsIcon
            settingsName.text = settingRow?.optionsName
            settingsStatus.text = settingRow?.optionsTitle
        }
    }
    
    // MARK: - Outlets
    
    private lazy var settingsIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var settingsName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var settingsStatus: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        contentView.addSubview(settingsIcon)
        contentView.addSubview(settingsName)
        contentView.addSubview(settingsStatus)
        
//        addSubview(settingsIcon)
//        addSubview(settingsName)
//        addSubview(settingsStatus)
//
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            settingsIcon.topAnchor.constraint(equalTo: contentView.topAnchor),
            settingsIcon.leadingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                                  constant: 15),
            settingsIcon.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            settingsName.topAnchor.constraint(equalTo: contentView.topAnchor),
            settingsName.leadingAnchor.constraint(equalTo: settingsIcon.trailingAnchor,
                                                  constant: 50),
            settingsName.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            settingsStatus.topAnchor.constraint(equalTo: contentView.topAnchor),
            settingsStatus.leadingAnchor.constraint(equalTo: settingsName.trailingAnchor,
                                                  constant: 30),
            settingsStatus.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}
