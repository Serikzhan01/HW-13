//
//  SettingsView.swift
//  HW-13
//
//  Created by Serikzhan on 26.03.2023.
//

import UIKit

protocol SettingViewDelegate: AnyObject {
    func selectedCell(selectedSetting: SettingsRow)
}

class SettingView: UIView {
    
    var settingsRows: [[SettingsRow]]?
    
    weak var delegate: SettingViewDelegate?
    
    // MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    // MARK: - Lifecycle
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        settingsRows = SettingsRow.settingsRows
        addSubview(tableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: self.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}


// MARK: - Extensions
extension SettingView: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingsRows?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsRows?[section].count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        cell?.setting = settingsRows?[indexPath.section][indexPath.row]
        let cellType = settingsRows?[indexPath.section][indexPath.row].visualType
        let switchButton = UISwitch(frame: .zero) as UISwitch
        switchButton.isOn = true
        switch cellType {
        case .switchSelect:
            cell?.accessoryView = switchButton
        case .disclosureIndicator:
            cell?.accessoryType = .disclosureIndicator
        case .none:
            cell?.accessoryType = .checkmark
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView( _ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let selectedSetting = settingsRows?[indexPath.section][indexPath.row] {
            delegate?.selectedCell(selectedSetting: selectedSetting)
        }
    }
}
