//
//  ContentViewModel.swift
//  BhagavadGita
//
//  Created by waheedCodes on 29/07/2023.
//

import BGUtility
import Foundation

final class ContentViewModel: ObservableObject {
    @Injected private var logger: BGLoggerType
    @Injected private var analyticsManager: AnalyticsManagerProtocol
    func onAppear() {
        analyticsManager.logEvent(event: AnalyticsEvent.clickButtonEvent)
    }
}
