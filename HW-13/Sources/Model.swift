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
            SettingsRow(optionsIcon: UIImage(named: "airplaneMode") ?? UIImage.remove, optionsName: "Авиарежим", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "wifi") ?? UIImage.remove, optionsName: "Wi-Fi", optionsCellType: .disclosureIndicator, optionsTitle: "Не подключено"),
            SettingsRow(optionsIcon: UIImage(named: "bluetooth") ?? UIImage.remove, optionsName: "Bluetooth", optionsCellType: .disclosureIndicator, optionsTitle: "Вкл."),
            SettingsRow(optionsIcon: UIImage(named: "cellular") ?? UIImage.remove, optionsName: "Сотовая связь", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "modem") ?? UIImage.remove, optionsName: "Режим модема", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "vpn") ?? UIImage.remove, optionsName: "VPN", optionsCellType: .disclosureIndicator)],
        [
            SettingsRow(optionsIcon: UIImage(named: "notification") ?? UIImage.remove, optionsName: "Уведомления", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "volume") ?? UIImage.remove, optionsName: "Звуки, тактильные сигналы", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "focus") ?? UIImage.remove, optionsName: "Фокусирование", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "screenTime") ?? UIImage.remove, optionsName: "Экранное время", optionsCellType: .disclosureIndicator)],
        [
            SettingsRow(optionsIcon: UIImage(named: "main") ?? UIImage.remove, optionsName: "Основные", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "control") ?? UIImage.remove, optionsName: "Пункт управления", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "screen") ?? UIImage.remove, optionsName: "Экран и яркость", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "home") ?? UIImage.remove, optionsName: "Экран домой", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "access") ?? UIImage.remove, optionsName: "Универсальный доступ", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "background") ?? UIImage.remove, optionsName: "Обои", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "siri") ?? UIImage.remove, optionsName: "Siri и Поиск", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "faceIdAndPassword") ?? UIImage.remove, optionsName: "Face ID и код-пароль", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "sos") ?? UIImage.remove, optionsName: "Экстренный вызов - SOS", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "battery") ?? UIImage.remove, optionsName: "Аккумулятор", optionsCellType: .disclosureIndicator),
            SettingsRow(optionsIcon: UIImage(named: "conf") ?? UIImage.remove, optionsName: "Конфиденциальность и безопасность", optionsCellType: .disclosureIndicator)]
    ]
}
