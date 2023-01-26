//
//  Bundle+Extensions.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2023-01-26.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(forResource resource: String, ofType type: String) throws -> T {
        guard let path = Bundle.main.path(forResource: resource, ofType: type) else {
            throw BundleFileError.fileNotFound
        }
        
        guard let data = FileManager.default.contents(atPath: path) else {
            throw BundleFileError.corruptedContent
        }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let decodedResult = try decoder.decode(T.self, from: data)
        
        return decodedResult
    }
}
