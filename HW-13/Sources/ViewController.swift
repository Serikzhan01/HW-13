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
        cell?.accessoryType = .disclosureIndicator
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
    }
}
















//extension ViewController: UITableViewDataSource, UITableViewDelegate {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return tabsSetting?.count ?? 0
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return tabsSetting?[section].count ?? 0
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        50
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
//        cell?.settingsRow = tabsSetting?[indexPath.section][indexPath.row]
//        cell?.accessoryType = .detailDisclosureButton
//        return cell ?? UITableViewCell()
//    }
//
//}
