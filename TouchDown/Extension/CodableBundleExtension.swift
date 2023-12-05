//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by Jordan Isac on 31/05/2023.
//

import Foundation

//extension Bundle {
//  func decode<T: Codable>(_ file: String) -> T {
//    // 1. Locate the JSON file
//    guard let url = self.url(forResource: file, withExtension: nil) else {
//      fatalError("Failed to locate \(file) in bundle.")
//    }
//
//    // 2. Create a property for the data
//    guard let data = try? Data(contentsOf: url) else {
//      fatalError("Failed to load \(file) from bundle.")
//    }
//
//    // 3. Create a decoder
//    let decoder = JSONDecoder()
//
//    // 4. Create a property for the decoded data
//    guard let decodedData = try? decoder.decode(T.self, from: data) else {
//      fatalError("Failed to decode \(file) from bundle.")
//    }
//
//    // 5. Return the ready-to-use data
//    return decodedData
//  }
//}

//import Foundation
//import SwiftUI
//
//class LocalJSONFetcher {
//    static func fetchData<T: Decodable>(from fileName: String, fileType: String, completion: @escaping (Result<T, Error>) -> Void) {
//        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileType) else {
//            let error = NSError(domain: "com.example.LocalJSONFetcher", code: -1, userInfo: [NSLocalizedDescriptionKey: "Failed to locate \(fileName).\(fileType) in the app bundle."])
//            completion(.failure(error))
//            return
//        }
//
//        do {
//            let data = try Data(contentsOf: url)
//            let decoder = JSONDecoder()
//            let decodedData = try decoder.decode(T.self, from: data)
//            completion(.success(decodedData))
//        } catch {
//            completion(.failure(error))
//        }
//    }
//}

import Foundation
import SwiftUI

//class LocalJSONLoader<T: Decodable> {
//    func load(_ filename: String) -> T? {
//        if let fileURL = Bundle.main.url(forResource: filename, withExtension: "json") {
//            do {
//                let data = try Data(contentsOf: fileURL)
//                let decoder = JSONDecoder()
//                let jsonData = try decoder.decode(T.self, from: data)
//                return jsonData
//            } catch {
//                print("Error decoding JSON data: \(error.localizedDescription)")
//            }
//        } else {
//            print("File not found")
//        }
//        return nil
//    }
//}

import UIKit
extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
        fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode(T.self, from: data) else {
        fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
    
}
