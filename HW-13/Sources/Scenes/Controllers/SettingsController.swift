//
//  SettingsController.swift
//  HW-13
//
//  Created by Serikzhan on 26.03.2023.
//

import UIKit

class SettingsController: UIViewController, SettingViewDelegate{
    
    var settingsRows: [[SettingsRow]]?
    
    private var settingView: SettingView? {
        guard isViewLoaded else { return nil }
        return view as? SettingView
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        let settingView = SettingView()
        settingView.delegate = self
        view = settingView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.backgroundColor = .white
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        let viewController = SettingView()
        viewController.delegate = self
        view = viewController
    }
    
    func selectedCell(selectedSetting: SettingsRow) {
        let viewController = DetailController()
        viewController.setting = selectedSetting
        navigationController?.pushViewController(viewController, animated: true)
    }
}
