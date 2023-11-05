//
//  FirebaseAnalyticsManager.swift
//  BhagavadGita
//
//  Created by waheedCodes on 03/11/2023.
//

import Firebase
import Foundation

class FirebaseAnalyticsManager: AnalyticsEventLoggerProtocol {
    func initialize() {}
    func logEvent(event: EventProtocol) {
        Analytics.logEvent(event.name, parameters: event.params)
    }
}
