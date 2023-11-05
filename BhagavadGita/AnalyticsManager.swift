//
//  AnalyticsManager.swift
//  BhagavadGita
//
//  Created by waheedCodes on 04/11/2023.
//

import Foundation

protocol EventProtocol {
    var name: String { get }
    var params: [String: Any] { get }
}

enum AnalyticsEvent {
    case clickButtonEvent
    case chapterTappedEvent(name: String)
}

extension AnalyticsEvent: EventProtocol {
    var name: String {
        switch self {
        case .clickButtonEvent:
            return "click_button_event"
        case .chapterTappedEvent:
            return "chapter_tapped_event"
        }
    }

    var params: [String: Any] {
        switch self {
        case .clickButtonEvent:
            return [:]
        case let .chapterTappedEvent(name):
            return ["name": name]
        }
    }
}

protocol AnalyticsEventLoggerProtocol {
    func initialize()
    func logEvent(event: EventProtocol)
}

protocol AnalyticsManagerProtocol {
    func logEvent(event: EventProtocol)
}

final class AnalyticsManager: AnalyticsManagerProtocol {
    private var logger: AnalyticsEventLoggerProtocol

    init(logger: AnalyticsEventLoggerProtocol) {
        self.logger = logger
    }

    func logEvent(event: EventProtocol) {
        logger.logEvent(event: event)
    }
}
