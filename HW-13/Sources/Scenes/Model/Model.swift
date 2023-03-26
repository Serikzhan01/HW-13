//
//  Model.swift
//  HW-13
//
//  Created by Serikzhan on 10.03.2023.
//

import UIKit

enum RowVisualPrepresentation {
    case switchSelect
    case disclosureIndicator
}

struct SettingsRow: Hashable {
    var optionsIcon: UIImage
    var optionsName: String
    var visualType: RowVisualPrepresentation
    var optionsTitle = ""
}

extension SettingsRow {
    static var settingsRows: [[SettingsRow]] = [
        [
            SettingsRow(optionsIcon: UIImage(named: "airplaneMode") ?? UIImage.remove,
                        optionsName: "Авиарежим", visualType: .switchSelect ),
            
            SettingsRow(optionsIcon: UIImage(named: "wifi") ?? UIImage.remove,
                        optionsName: "Wi-Fi",  visualType: .disclosureIndicator,
                        optionsTitle: "Не подключено"),
            
            SettingsRow(optionsIcon: UIImage(named: "bluetooth") ?? UIImage.remove,
                        optionsName: "Bluetooth", visualType: .disclosureIndicator,
                        optionsTitle: "Вкл."),
            
            SettingsRow(optionsIcon: UIImage(named: "cellular") ?? UIImage.remove,
                        optionsName: "Сотовая связь", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "modem") ?? UIImage.remove,
                        optionsName: "Режим модема", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "vpn") ?? UIImage.remove,
                        optionsName: "VPN", visualType: .disclosureIndicator)],
        [
            SettingsRow(optionsIcon: UIImage(named: "notification") ?? UIImage.remove,
                        optionsName: "Уведомления", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "volume") ?? UIImage.remove,
                        optionsName: "Звуки, тактильные сигналы",
                        visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "focus") ?? UIImage.remove,
                        optionsName: "Фокусирование", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "screenTime") ?? UIImage.remove,
                        optionsName: "Экранное время", visualType: .disclosureIndicator)],
        [
            SettingsRow(optionsIcon: UIImage(named: "main") ?? UIImage.remove,
                        optionsName: "Основные", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "control") ?? UIImage.remove,
                        optionsName: "Пункт управления", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "screen") ?? UIImage.remove,
                        optionsName: "Экран и яркость", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "home") ?? UIImage.remove,
                        optionsName: "Экран домой", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "access") ?? UIImage.remove,
                        optionsName: "Универсальный доступ", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "background") ?? UIImage.remove,
                        optionsName: "Обои", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "siri") ?? UIImage.remove,
                        optionsName: "Siri и Поиск", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "faceIdAndPassword") ?? UIImage.remove,
                        optionsName: "Face ID и код-пароль", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "sos") ?? UIImage.remove,
                        optionsName: "Экстренный вызов - SOS", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "battery") ?? UIImage.remove,
                        optionsName: "Аккумулятор", visualType: .disclosureIndicator),
            
            SettingsRow(optionsIcon: UIImage(named: "conf") ?? UIImage.remove,
                        optionsName: "Конфиденциальность и безопасность", visualType: .disclosureIndicator)]
    ]
}
