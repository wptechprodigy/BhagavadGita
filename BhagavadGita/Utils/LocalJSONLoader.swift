//
//  LocalJSONLoader.swift
//  BhagavadGita
//
//  Created by waheedCodes on 16/04/2024.
//

import Foundation

class LocalJSONLoader {
    func load<T: Decodable>(_ fileName: String, as _: T.Type = T.self) -> T? {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            return nil
        }

        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            return nil
        }
    }
}
