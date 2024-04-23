//
//  BGLogger.swift
//  BhagavadGita
//
//  Created by waheedCodes on 29/07/2023.
//

import Foundation
import SwiftyBeaver

protocol BGLoggerType {
    func verbose(_ message: String, _ file: String, _ function: String, _ line: Int)
    func debug(_ message: String, _ file: String, _ function: String, _ line: Int)
    func info(_ message: String, _ file: String, _ function: String, _ line: Int)
    func warning(_ message: String, _ file: String, _ function: String, _ line: Int)
    func error(_ message: String, _ file: String, _ function: String, _ line: Int)
}

extension BGLoggerType {
    func verbose(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        verbose(message, file, function, line)
    }

    func debug(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        debug(message, file, function, line)
    }

    func info(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        info(message, file, function, line)
    }

    func warning(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        warning(message, file, function, line)
    }

    func error(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        error(message, file, function, line)
    }
}

final class BGLogger: BGLoggerType {
    // MARK: - Properties

    private let log: SwiftyBeaver.Type = {
        let log = SwiftyBeaver.self
        let console = ConsoleDestination()
        log.addDestination(console)
        return log
    }()

    // MARK: - Log Events

    func verbose(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        log.verbose(message, file: file, function: function, line: line)
    }

    func debug(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        log.debug(message, file: file, function: function, line: line)
    }

    func info(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        log.info(message, file: file, function: function, line: line)
    }

    func warning(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        log.warning(message, file: file, function: function, line: line)
    }

    func error(
        _ message: String,
        _ file: String = #file,
        _ function: String = #function,
        _ line: Int = #line
    ) {
        log.error(message, file: file, function: function, line: line)
    }
}
