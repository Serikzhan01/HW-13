//
//  ViewController.swift
//  HW-13
//
//  Created by Serikzhan on 10.03.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var settingsRows: [[SettingsRow]]?
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.backgroundColor = .white
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        settingsRows = SettingsRow.settingsRows
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    // MARK: - Actions
    
    
    
    
    // MARK: - Extensions
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingsRows?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsRows?[section].count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        cell?.settingRow = settingsRows?[indexPath.section][indexPath.row]
        let cellType = settingsRows?[indexPath.section][indexPath.row].visualType
        let switchButton = UISwitch(frame: .zero) as? UISwitch
        switchButton?.isOn = true
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

func tableView( _ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let viewController = DetailViewController()
    tableView.deselectRow(at: indexPath, animated: true)
    viewController.settingRow = settingsRows?[indexPath.section][indexPath.row]
    navigationController?.pushViewController(viewController, animated: true)
    let cellType = settingsRows?[indexPath.section][indexPath.row].optionsName
    print("был выбран раздел \(cellType ?? "пока ничего не выбрано")")
    }
}

