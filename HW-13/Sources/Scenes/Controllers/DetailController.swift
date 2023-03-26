//
//  DetailController.swift
//  HW-13
//
//  Created by Serikzhan on 26.03.2023.
//

import UIKit

final class DetailController: UIViewController {
    
    var setting: SettingsRow?
    
    private var detailView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        view = DetailView()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Detail View"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadView()
        configureView()
    }
    
    func configureView() {
        detailView?.fillSettings(setting)
    }
}
