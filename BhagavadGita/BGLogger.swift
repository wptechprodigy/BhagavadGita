//
//  BGLogger.swift
//  BhagavadGita
//
//  Created by waheedCodes on 29/07/2023.
//

import Foundation
import SwiftyBeaver

final class BGLogger {
    // MARK: - Properties
    let log: SwiftyBeaver.Type = {
        let log = SwiftyBeaver.self
        let console = ConsoleDestination()
        log.addDestination(console)
        return log
    }()
    // MARK: - Log Events
    func verbose(message: String) {
        log.verbose(message)
    }
    func debug(message: String) {
        log.debug(message)
    }
    func info(message: String) {
        log.info(message)
    }
    func warning(message: String) {
        log.warning(message)
    }
    func error(message: String) {
        log.error(message)
    }
}
