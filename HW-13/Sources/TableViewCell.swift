//
//  TableViewCell.swift
//  HW-13
//
//  Created by Serikzhan on 10.03.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    
    
    
    
    
    // MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        setupHierarchy()
//        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
//        contentView.addSubview(imageContainer)
//        contentView.addSubview(stack)
//
//        imageContainer.addSubview(personImage)
//        imageContainer.addSubview(countryImage)
//
//        stack.addArrangedSubview(name)
//        stack.addArrangedSubview(profession)
    }
    private func setupLayout() {
        // imagecontainer
        NSLayoutConstraint.activate([
          
        ])
        // stack
        NSLayoutConstraint.activate([
           
        ])
        // personImage
        NSLayoutConstraint.activate([
           
        ])
        // countryPerson
        NSLayoutConstraint.activate([
          
        ])
        
    }
}
