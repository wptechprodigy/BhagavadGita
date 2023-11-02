//
//  ContentViewModel.swift
//  BhagavadGita
//
//  Created by waheedCodes on 29/07/2023.
//

import Foundation

final class ContentViewModel: ObservableObject {
    @Injected private var logger: BGLoggerType
    func onAppear() {
        logger.info("View is loaded...")
        print(API.baseURL)
        print(ConfigurationManager.environment)
    }

    func aa() {}
}
