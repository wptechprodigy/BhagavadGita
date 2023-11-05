//
//  Injection.swift
//  BhagavadGita
//
//  Created by waheedCodes on 29/07/2023.
//

import Foundation
import Swinject

final class Injection {
    static let shared = Injection()
    var container: Container {
        get {
            if _container == nil {
                _container = buildContainer()
            }
            return _container!
        }
        set {
            _container = newValue
        }
    }

    private var _container: Container?
    private func buildContainer() -> Container {
        let container = Container()
        container.register(BGLoggerType.self) { _ in
            BGLogger()
        }
        container.register(AnalyticsManagerProtocol.self) { _ in
            AnalyticsManager(logger: FirebaseAnalyticsManager())
        }
        return container
    }
}

@propertyWrapper struct Injected<Dependency> {
    let wrappedValue: Dependency
    init() {
        wrappedValue = Injection.shared.container.resolve(Dependency.self)!
    }
}
