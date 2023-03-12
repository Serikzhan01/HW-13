//
//  Model.swift
//  HW-13
//
//  Created by Serikzhan on 10.03.2023.
//

import UIKit

struct SettingsRow: Hashable {
    var optionsIcon: UIImage
    var optionsName: String
    var optionsCellType: UITableViewCell.AccessoryType
    var optionsTitle = ""
}

extension SettingsRow {
    static var settingsRows: [[SettingsRow]] = [
        [
            SettingsRow(optionsIcon: UIImage(named: "airplaneMode") ?? UIImage.remove, optionsName: "Авиарежим", optionsCellType: .checkmark),
            SettingsRow(optionsIcon: UIImage(named: "wifi") ?? UIImage.remove, optionsName: "Wi-Fi", optionsCellType: .checkmark),
            SettingsRow(optionsIcon: UIImage(named: "bluetooth") ?? UIImage.remove, optionsName: "Bluetooth", optionsCellType: .checkmark),
            SettingsRow(optionsIcon: UIImage(named: "cellular") ?? UIImage.remove, optionsName: "Сотовая связь", optionsCellType: .checkmark),
            SettingsRow(optionsIcon: UIImage(named: "modem") ?? UIImage.remove, optionsName: "Режим модема", optionsCellType: .checkmark),
            SettingsRow(optionsIcon: UIImage(named: "vpn") ?? UIImage.remove, optionsName: "VPN", optionsCellType: .checkmark)]
    ]
}
